CREATE TABLE User (
    User_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Username VARCHAR(15) NOT NULL,
    Password VARCHAR(64) NOT NULL,
    Email VARCHAR(64) NOT NULL,
    PRIMARY KEY (User_ID)
);

CREATE TABLE User (
    User_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Username VARCHAR(15) NOT NULL,
    Password VARCHAR(64) NOT NULL,
    Email VARCHAR(64) NOT NULL,
    PRIMARY KEY (User_ID)
);

CREATE TABLE Comment (
    CommentNum VARCHAR(64) NOT NULL AUTOINCREMENT,
    Article_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    User_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Content MEDIUMTEXT NOT NULL,
    Day Date NOT NULL,
    Time Time NOT NULL,
    PRIMARY KEY (CommentNum),
    FOREIGN KEY (User_ID) REFERENCES User(USER_ID)
);

CREATE TABLE Article (
    Article_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Category_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Title TINYTEXT NOT NULL,
    Description LONGTEXT NOT NULL,
    Day Date NOT NULL,
    Time Time NOT NULL,
    PRIMARY KEY (Article_ID)
);

ALTER TABLE Comment 
    ADD CONSTRAINT Article_ID 
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID);

CREATE TABLE Views (
    User_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Article_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    FOREIGN KEY (User_ID) REFERENCES User(User_ID),
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID),
    PRIMARY KEY (User_ID, Article_ID)
);

CREATE TABLE Author (
    Author_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Username VARCHAR(20) NOT NULL,
    Password VARCHAR(64) NOT NULL,
    Email VARCHAR(64) NOT NULL,
    PRIMARY KEY (Author_ID)
);

CREATE TABLE AuthorArticle (
    Article_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Author_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID),
    FOREIGN KEY (Author_ID) REFERENCES Author(Author_ID),
    PRIMARY KEY (Article_ID, Author_ID)
);

CREATE TABLE Video (
    Video_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Article_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Name VARCHAR(64) NOT NULL,
    Directory VARCHAR(64) NOT NULL,
    PRIMARY KEY (Video_ID),
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID)
);

CREATE TABLE Photo (
    Photo_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Article_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Name VARCHAR(64) NOT NULL,
    Directory VARCHAR(64) NOT NULL,
    PRIMARY KEY (Photo_ID),
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID)
);

CREATE TABLE Category (
    Category_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Name VARCHAR(64) NOT NULL,
    PRIMARY KEY (Category_ID)
);

ALTER TABLE Article
ADD CONSTRAINT Category_ID
FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID);

CREATE TABLE Tag (
    Tag_ID VARCHAR(64) NOT NULL PRIMARY KEY AUTOINCREMENT,
    Keyword VARCHAR(64) NOT NULL
);

CREATE TABLE ArticleTag (
    Article_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Tag_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    PRIMARY KEY (Article_ID, Tag_ID),
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID),
    FOREIGN KEY (Tag_ID) REFERENCES Tag(Tag_ID)
);

CREATE TABLE Comment (
    CommentNum VARCHAR(64) NOT NULL AUTOINCREMENT,
    Article_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    User_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Content MEDIUMTEXT NOT NULL,
    Day Date NOT NULL,
    Time Time NOT NULL,
    PRIMARY KEY (CommentNum),
    FOREIGN KEY (User_ID) REFERENCES User(USER_ID)
);

CREATE TABLE Article (
    Article_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Category_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Title TINYTEXT NOT NULL,
    Description LONGTEXT NOT NULL,
    Day Date NOT NULL,
    Time Time NOT NULL,
    PRIMARY KEY (Article_ID)
);

ALTER TABLE Comment 
    ADD CONSTRAINT Article_ID 
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID);

CREATE TABLE Views (
    User_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Article_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    FOREIGN KEY (User_ID) REFERENCES User(User_ID),
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID),
    PRIMARY KEY (User_ID, Article_ID)
);

CREATE TABLE Author (
    Author_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Username VARCHAR(20) NOT NULL,
    Password VARCHAR(64) NOT NULL,
    Email VARCHAR(64) NOT NULL,
    PRIMARY KEY (Author_ID)
);

CREATE TABLE AuthorArticle (
    Article_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Author_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID),
    FOREIGN KEY (Author_ID) REFERENCES Author(Author_ID),
    PRIMARY KEY (Article_ID, Author_ID)
);

CREATE TABLE Video (
    Video_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Article_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Name VARCHAR(64) NOT NULL,
    Directory VARCHAR(64) NOT NULL,
    PRIMARY KEY (Video_ID),
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID)
);

CREATE TABLE Photo (
    Photo_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Article_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Name VARCHAR(64) NOT NULL,
    Directory VARCHAR(64) NOT NULL,
    PRIMARY KEY (Photo_ID),
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID)
);

CREATE TABLE Category (
    Category_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Name VARCHAR(64) NOT NULL,
    PRIMARY KEY (Category_ID)
);

ALTER TABLE Article
ADD CONSTRAINT Category_ID
FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID);

CREATE TABLE Tag (
    Tag_ID VARCHAR(64) NOT NULL PRIMARY KEY AUTOINCREMENT,
    Keyword VARCHAR(64) NOT NULL
);

CREATE TABLE ArticleTag (
    Article_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    Tag_ID VARCHAR(64) NOT NULL AUTOINCREMENT,
    PRIMARY KEY (Article_ID, Tag_ID),
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID),
    FOREIGN KEY (Tag_ID) REFERENCES Tag(Tag_ID)
);