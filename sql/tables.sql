use SimpleCMS;
GO

DROP TABLE IF EXISTS dbo.cms_options;
DROP TABLE IF EXISTS cms_post_categories;
DROP TABLE IF EXISTS cms_categories;
DROP TABLE IF EXISTS cms_posts;
DROP TABLE IF EXISTS dbo.cms_users;

-- Setting table
CREATE TABLE dbo.cms_options
(
    id           INT PRIMARY KEY IDENTITY (1,1),
    option_name  VARCHAR(120) NOT NULL unique,
    option_value varchar(max) NOT NULL,
);

CREATE table dbo.cms_users
(
    id         INT PRIMARY KEY IDENTITY (1,1),
    email      VARCHAR(40) NOT NULL UNIQUE,
    first_name VARCHAR(30),
    last_name  VARCHAR(30),
    username   VARCHAR(30) NOT NULL UNIQUE,
    pw         VARCHAR(50) NOT NULL,
    role       int DEFAULT 1,

    created_at DATETIME    NOT NULL,
    updated_at DATETIME    NOT NULL,
);
GO

CREATE TABLE dbo.cms_posts
(
    id         INT PRIMARY KEY IDENTITY (1,1),
    user_id    INT REFERENCES dbo.cms_users (id),
    title      VARCHAR(120),
    content    VARCHAR(max),
    type       int         DEFAULT 1,
    status     VARCHAR(15) DEFAULT 'draft',
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
)
GO

CREATE TABLE dbo.cms_categories
(
    id          INT PRIMARY KEY IDENTITY (1,1),
    name        VARCHAR(30),
    description VARCHAR(50),
    created_at  DATETIME NOT NULL,
    updated_at  DATETIME NOT NULL,
)
GO

CREATE TABLE dbo.cms_post_categories
(
    id          INT PRIMARY KEY IDENTITY (1,1),
    post_id     INT REFERENCES dbo.cms_posts (id),
    category_id INT REFERENCES dbo.cms_categories (id),
);
GO