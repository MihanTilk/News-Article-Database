-- CREATE TABLE IF NOT EXISTS User (
--     User_ID INT NOT NULL AUTO_INCREMENT,
--     Username VARCHAR(15) NOT NULL,
--     Password VARCHAR(64) NOT NULL,
--     Email VARCHAR(64) NOT NULL,
--     PRIMARY KEY (User_ID)
-- );

-- CREATE TABLE IF NOT EXISTS Comment (
--     CommentNum INT NOT NULL AUTO_INCREMENT,
--     Article_ID INT NOT NULL,
--     User_ID INT NOT NULL,
--     Content MEDIUMTEXT NOT NULL,
--     Date DATETIME NOT NULL,
--     PRIMARY KEY (CommentNum),
--     FOREIGN KEY (User_ID) REFERENCES User(User_ID)
-- );


-- CREATE TABLE IF NOT EXISTS Article (
--     Article_ID INT NOT NULL AUTO_INCREMENT,
--     Category_ID INT NOT NULL,
--     Title TINYTEXT NOT NULL,
--     Description LONGTEXT NOT NULL,
--     Date DATETIME NOT NULL,
--     PRIMARY KEY (Article_ID)
-- );

-- ALTER TABLE Comment 
--     ADD CONSTRAINT Article_ID 
--     FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID);

-- CREATE TABLE IF NOT EXISTS Views (
--     User_ID INT NOT NULL,
--     Article_ID INT NOT NULL,
--     FOREIGN KEY (User_ID) REFERENCES User(User_ID),
--     FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID),
--     PRIMARY KEY (User_ID, Article_ID)
-- );

-- CREATE TABLE IF NOT EXISTS Author (
--     Author_ID INT NOT NULL AUTO_INCREMENT,
--     Username VARCHAR(20) NOT NULL,
--     Password VARCHAR(64) NOT NULL,
--     Email VARCHAR(64) NOT NULL,
--     PRIMARY KEY (Author_ID)
-- );

-- CREATE TABLE IF NOT EXISTS AuthorArticle (
--     Article_ID INT NOT NULL,
--     Author_ID INT NOT NULL,
--     FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID),
--     FOREIGN KEY (Author_ID) REFERENCES Author(Author_ID),
--     PRIMARY KEY (Article_ID, Author_ID)
-- );

-- CREATE TABLE IF NOT EXISTS Video (
--     Video_ID INT NOT NULL AUTO_INCREMENT,
--     Article_ID INT NOT NULL,
--     Name VARCHAR(64) NOT NULL,
--     Directory VARCHAR(64) NOT NULL,
--     PRIMARY KEY (Video_ID),
--     FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID)
-- );

-- CREATE TABLE IF NOT EXISTS Photo (
--     Photo_ID INT NOT NULL AUTO_INCREMENT,
--     Article_ID INT NOT NULL,
--     Name VARCHAR(64) NOT NULL,
--     Directory VARCHAR(64) NOT NULL,
--     PRIMARY KEY (Photo_ID),
--     FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID)
-- );

-- CREATE TABLE IF NOT EXISTS Category (
--     Category_ID INT NOT NULL AUTO_INCREMENT,
--     Name VARCHAR(64) NOT NULL,
--     PRIMARY KEY (Category_ID)
-- );

-- ALTER TABLE Article
-- ADD CONSTRAINT Category_ID
-- FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID);

-- CREATE TABLE IF NOT EXISTS Tag (
--     Tag_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     Keyword VARCHAR(64) NOT NULL
-- );

-- CREATE TABLE IF NOT EXISTS ArticleTag (
--     Article_ID INT NOT NULL,
--     Tag_ID INT NOT NULL,
--     PRIMARY KEY (Article_ID, Tag_ID),
--     FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID),
--     FOREIGN KEY (Tag_ID) REFERENCES Tag(Tag_ID)
-- );
