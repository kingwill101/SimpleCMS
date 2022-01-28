use SimpleCMS;
GO

/*
 cms_options
 */
CREATE OR ALTER PROCEDURE dbo.create_option @Name AS VARCHAR(120), @Value AS VARCHAR(max)
    AS
BEGIN
INSERT INTO dbo.cms_options(option_name, option_value)
values (@Name, @Value)
end
GO

CREATE OR ALTER PROCEDURE dbo.read_option @Name AS VARCHAR(120)
    AS
BEGIN
SELECT * FROM cms_options WHERE option_name = @Name
end
GO

CREATE OR ALTER PROCEDURE dbo.update_option @Name AS VARCHAR(120), @Value AS VARCHAR(max)
    AS
BEGIN
begin tran
        --         Check if a record with the given name already exists
if exists(select * from cms_options where option_name = @Name)
begin
UPDATE cms_options
SET option_value = @Value
WHERE option_name = @Name
end
else
begin
                --                 If option with the name @Name does not exist we create it
Exec dbo.create_option @Name, @Value;
end
commit tran
end
GO

CREATE OR ALTER PROCEDURE dbo.delete_option @ID AS INT
    AS
Begin
DELETE FROM cms_options WHERE id = @ID
end
GO

CREATE OR ALTER PROCEDURE dbo.delete_optionByName @Name AS VARCHAR(120)
    AS
Begin
DELETE FROM cms_options WHERE option_name = @Name
end
GO

-- cms_options END


/**
  cms_users
*/

CREATE OR ALTER PROCEDURE dbo.create_user @firstName AS VARCHAR(30) ='',
    @lastName AS VARCHAR(30) ='',
    @email AS VARCHAR(40),
    @pw AS VARCHAR(50), @UserName AS VARCHAR(30), @Role AS int = 1
    AS
BEGIN
INSERT INTO cms_users(first_name, last_name, email, pw, username, role, created_at, updated_at)
VALUES (@firstName, @lastName, @email, @pw, @UserName, @Role, SYSUTCDATETIME(), SYSUTCDATETIME())
end
GO

create OR ALTER PROCEDURE read_userByEmail @email as VARCHAR(40)
    AS
SELECT TOP 1 id, first_name, last_name, email, username, role
FROM cms_users
WHERE email = @email
    GO

create OR ALTER PROCEDURE read_userByUserNamePw @Username as VARCHAR(40), @Password AS VARCHAR(50)
    AS
SELECT TOP 1 id, first_name, last_name, email, username, role
FROM cms_users
WHERE username = @Username
  AND pw = @Password
    GO

create OR ALTER PROCEDURE read_userName @UserName as VARCHAR(30)
    AS
SELECT TOP 1 id, first_name, last_name, email, username, role
FROM cms_users
WHERE username = @UserName
    GO

CREATE OR ALTER PROCEDURE read_user_byId @ID as int
    AS
SELECT TOP 1 id, first_name, last_name, email, username, role
FROM cms_users
WHERE id = @ID;
GO

CREATE OR ALTER PROCEDURE dbo.delete_user @ID AS int
    AS
BEGIN
DELETE FROM cms_users WHERE id = @ID;
end
GO

CREATE OR ALTER PROCEDURE dbo.list_users
    AS
BEGIN
SELECT id, first_name, last_name, email, username, role FROM cms_users ORDER BY created_at DESC;
end
GO

CREATE OR ALTER PROCEDURE dbo.update_user @ID AS int, @firstName AS VARCHAR(30), @lastName AS VARCHAR(30),
    @email AS VARCHAR(40), @Username AS VARCHAR(30), @Role AS INT,
    @Password AS VARCHAR(50) = NULL
    AS
BEGIN
    -- A bit of a weird work around if we want to optionally update the password
-- If @Password is null we set @Password to the existing password the user created previously
    IF @Password IS NULL
BEGIN
            SET @Password = (SELECT pw FROM cms_users WHERE id = @ID);
end

UPDATE dbo.cms_users
SET first_name = @firstName,
    last_name  = @lastName,
    email      = @email,
    username   = @Username,
    role       = @Role,
    pw         = @Password

WHERE id = @ID;
end
GO
-- cms_users end


/*
  cms_posts
 */

CREATE OR ALTER PROCEDURE read_postById @ID as int
    AS
SELECT TOP 1 *
FROM cms_posts
WHERE id = @ID;
GO

CREATE OR ALTER PROCEDURE dbo.delete_post @ID AS int
    AS
BEGIN
DELETE FROM cms_posts WHERE id = @ID;
end
GO

CREATE OR ALTER PROCEDURE dbo.update_post @ID AS int, @title AS VARCHAR(120), @content AS VARCHAR(max)
    AS
BEGIN
UPDATE dbo.cms_posts
SET content = @content,
    title   = @title
WHERE id = @ID;
end
GO

CREATE OR ALTER PROCEDURE dbo.create_post @userID AS int,
    @title AS VARCHAR(120),
    @content AS VARCHAR(max),
    @Category AS INT = NULL,
    @Status AS VARCHAR(15) = 'draft',
    @Type AS INT = 1
    AS
BEGIN
    SET NOCOUNT ON;
    declare @id as int --assuming your identity column is int

begin tran
        --      By default we want to make sure the post has a category assigned
--      use uncategorized as the default category if @Category is null.
--      Check if it exists and if not we create it
if NOT exists(select * from cms_categories where name = 'uncategorized')
begin
Exec dbo.create_category 'uncategorized', 'Content without a category';
end

        if @Category IS NULL
BEGIN
                --               Assign the id of the category to @Category
                SET @Category = (select id from cms_categories WHERE name = 'uncategorized');
END

INSERT INTO dbo.cms_posts(user_id, content, title, created_at, updated_at, type, status)
VALUES (@userID, @content, @title, SYSUTCDATETIME(), SYSUTCDATETIME(), @Type, @Status)

--      Save the id of the last inserted post
    set @id = scope_identity()
--      Record the matching category and post
        EXEC create_post_category @id, @Category

select @id --return the value for executescaler to catch it
    commit tran


end
GO

CREATE OR ALTER PROCEDURE dbo.list_posts
    AS
BEGIN
SELECT * FROM cms_posts ORDER BY created_at DESC;
end

GO

CREATE OR ALTER PROCEDURE dbo.list_x_posts @Limit AS INT
    AS
BEGIN
SELECT TOP (@Limit) * FROM cms_posts ORDER BY created_at DESC ;
end

GO

CREATE OR ALTER PROCEDURE dbo.list_user_posts @ID AS INT
    AS
BEGIN
SELECT * FROM cms_posts WHERE user_id = @ID ORDER BY created_at DESC ;
end

GO


CREATE OR ALTER PROCEDURE dbo.create_category @Name AS VARCHAR(120), @Description AS VARCHAR(max)
    AS
BEGIN
    SET NOCOUNT ON;
    declare @id as int --assuming your identity column is int

    INSERT INTO dbo.cms_categories(name, description, created_at, updated_at)
    VALUES (@Name, @Description, SYSUTCDATETIME(), SYSUTCDATETIME())

    set @id = scope_identity()
select @id --return the value for executescaler to catch it

end
GO

CREATE OR ALTER PROCEDURE dbo.list_categories
    AS
BEGIN
SELECT * FROM cms_categories ORDER BY created_at DESC;
end
GO

CREATE OR ALTER PROCEDURE dbo.read_categoryById @ID AS INT
    AS
BEGIN
SELECT TOP 1 * FROM cms_categories WHERE id = @ID;
end
GO



CREATE OR ALTER PROCEDURE dbo.delete_category @ID AS int
    AS
BEGIN
DELETE FROM cms_categories WHERE id = @ID;
end
GO

CREATE OR ALTER PROCEDURE dbo.update_category @ID AS int, @Name AS VARCHAR(120), @Description AS VARCHAR(max)
    AS
BEGIN
UPDATE dbo.cms_categories
SET name        = @Name,
    description = @Description
WHERE id = @ID;
end
GO

--  cms_posts end


CREATE OR ALTER PROCEDURE dbo.create_post_category @PostID AS int, @CatgeoryID AS INT
    AS
BEGIN
INSERT INTO cms_post_categories (post_id, category_id, updated_at, created_at)
VALUES (@PostID, @CatgeoryID, SYSUTCDATETIME(), SYSUTCDATETIME())
end
GO


CREATE OR ALTER PROCEDURE dbo.count_user_posts @Id AS INT
    AS
BEGIN
SELECT COUNT(*) FROM cms_posts WHERE user_id = @Id;
end
GO


CREATE OR ALTER PROCEDURE dbo.count_category_posts @Id AS INT
    AS
BEGIN
SELECT COUNT(*) FROM cms_post_categories WHERE category_id = @Id;
end
GO


CREATE OR ALTER PROCEDURE dbo.list_post_categories @ID AS INT
    AS
BEGIN
SELECT cms_categories.*
FROM cms_categories
         JOIN dbo.cms_post_categories cpc on cms_categories.id = cpc.category_id
WHERE post_id = @ID
end
GO

CREATE OR ALTER PROCEDURE dbo.list_category_posts @ID AS INT
    AS
BEGIN

SELECT post_id
INTO #category_posts
FROM cms_post_categories
WHERE category_id = @ID
ORDER BY created_at DESC;

SELECT *
FROM cms_posts
WHERE id in (SELECT post_id FROM #category_posts)

end
GO

-- CREATE OR ALTER PROCEDURE dbo.list_category_posts @ID AS INT
-- AS
-- BEGIN
--     SELECT cms_posts.*
--     FROM cms_posts
--              JOIN dbo.cms_post_categories cpc on cms_posts.id = cpc.post_id
--
--     WHERE cpc.category_id = @ID
-- end
-- GO

-- EXEC dbo.list_category_posts 4


CREATE OR ALTER PROCEDURE dbo.deletePostCategories @ID AS INT
    AS
BEGIN
DELETE FROM dbo.cms_post_categories WHERE post_id = @ID
end

GO

CREATE OR ALTER PROCEDURE dbo.comment_delete @ID AS INT
    AS
BEGIN
DELETE FROM dbo.cms_post_comments WHERE id = @ID
end

GO

CREATE OR ALTER PROCEDURE dbo.comment_read @ID AS INT
    AS
BEGIN
SELECT * FROM dbo.cms_post_comments WHERE id = @ID ORDER BY created_at DESC
end

GO

CREATE OR ALTER PROCEDURE dbo.comment_add @UserId AS INT, @PostId AS Int, @Content AS varchar(200)
    AS
BEGIN
INSERT INTO cms_post_comments (post_id, user_id, content, updated_at, created_at)
VALUES (@PostId, @UserId, @Content, SYSUTCDATETIME(), SYSUTCDATETIME())
end

GO

CREATE OR ALTER PROCEDURE dbo.list_comments
    AS
BEGIN
SELECT * FROM cms_post_comments ORDER BY created_at DESC ;
end
GO

CREATE OR ALTER PROCEDURE dbo.list_post_comments @PostId AS INT
    AS
BEGIN
SELECT * FROM cms_post_comments WHERE post_id = @PostId ORDER BY created_at DESC;
end

GO

CREATE OR ALTER PROCEDURE dbo.list_comment_summary @Limit AS INT = 5
    AS
BEGIN
SELECT TOP (@Limit) cms_post_comments.user_id                AS user_id,
        CONCAT(cu.first_name, ' ', cu.last_name) AS user_name,
       post_id,
       cms_post_comments.content,
       cms_post_comments.created_at
FROM cms_post_comments
         JOIN cms_users cu on cms_post_comments.user_id = cu.id
         JOIN cms_posts cp on cms_post_comments.post_id = cp.id

ORDER BY created_at DESC;
end
GO




