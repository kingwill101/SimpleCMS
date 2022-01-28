use
SimpleCMS;

DROP TRIGGER IF EXISTS dbo.cms_posts_update
GO

CREATE
OR ALTER
TRIGGER dbo.cms_posts_update
    on cms_posts
    AFTER
UPDATE
    AS
UPDATE cms_posts
SET updated_at = SYSDATETIME()
WHERE ID IN (SELECT DISTINCT id from inserted)
    GO


DROP TRIGGER IF EXISTS dbo.cms_users_update
GO

CREATE
OR ALTER
TRIGGER dbo.cms_users_update
    on cms_users
    AFTER
UPDATE
    AS
UPDATE cms_users
SET updated_at = SYSDATETIME()
WHERE ID IN (SELECT DISTINCT id from inserted)
    GO


DROP TRIGGER IF EXISTS dbo.cms_categories_update
GO

CREATE
OR ALTER
TRIGGER dbo.cms_categories_update
    on cms_categories
    AFTER
UPDATE
    AS
UPDATE cms_categories
SET updated_at = SYSDATETIME()
WHERE ID IN (SELECT DISTINCT id from inserted)
    GO

DROP TRIGGER IF EXISTS dbo.cms_categories_posts_update
GO

CREATE
OR ALTER
TRIGGER dbo.cms_categories_posts_update
    on cms_post_categories
    AFTER
UPDATE
    AS
UPDATE cms_post_categories
SET updated_at = SYSDATETIME()
WHERE ID IN (SELECT DISTINCT id from inserted)
    GO

DROP TRIGGER IF EXISTS dbo.cms_comments
GO

CREATE
OR ALTER
TRIGGER dbo.cms_comments
    on cms_post_comments
    AFTER
UPDATE
    AS
UPDATE cms_post_comments
SET updated_at = SYSDATETIME()
WHERE ID IN (SELECT DISTINCT id from inserted)
    GO