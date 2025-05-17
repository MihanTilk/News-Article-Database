import mysql.connector
from Interface import UI
import pandas as pd

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    passwd = "",
    database = "NewsDB"
)

mycursor = mydb.cursor()
mycursor.execute("CREATE DATABASE IF NOT EXISTS NewsDB")

#inter = UI(mycursor, mydb)

#Create tables
mycursor.execute("""CREATE TABLE IF NOT EXISTS User (
                    User_ID INT NOT NULL AUTO_INCREMENT,
                    Username VARCHAR(15) NOT NULL,
                    Password VARCHAR(64) NOT NULL,
                    Email VARCHAR(64) NOT NULL,
                    PRIMARY KEY (User_ID)
                    );

                    CREATE TABLE IF NOT EXISTS Comment (
                    CommentNum INT NOT NULL AUTO_INCREMENT,
                    Article_ID INT NOT NULL,
                    User_ID INT NOT NULL,
                    Content MEDIUMTEXT NOT NULL,
                    Date DATETIME NOT NULL,
                    PRIMARY KEY (CommentNum),
                    FOREIGN KEY (User_ID) REFERENCES User(User_ID)
                    );


                    CREATE TABLE IF NOT EXISTS Article (
                        Article_ID INT NOT NULL AUTO_INCREMENT,
                        Category_ID INT NOT NULL,
                        Title TINYTEXT NOT NULL,
                        Description LONGTEXT NOT NULL,
                        Date DATETIME NOT NULL,
                        PRIMARY KEY (Article_ID)
                    );

                    ALTER TABLE Comment
                        ADD CONSTRAINT Article_ID
                        FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID);

                    CREATE TABLE IF NOT EXISTS Views (
                        User_ID INT NOT NULL,
                        Article_ID INT NOT NULL,
                        FOREIGN KEY (User_ID) REFERENCES User(User_ID),
                        FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID),
                        PRIMARY KEY (User_ID, Article_ID)
                    );

                    CREATE TABLE IF NOT EXISTS Author (
                        Author_ID INT NOT NULL AUTO_INCREMENT,
                        Username VARCHAR(20) NOT NULL,
                        Password VARCHAR(64) NOT NULL,
                        Email VARCHAR(64) NOT NULL,
                        PRIMARY KEY (Author_ID)
                    );

                    CREATE TABLE IF NOT EXISTS AuthorArticle (
                        Article_ID INT NOT NULL,
                        Author_ID INT NOT NULL,
                        FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID),
                        FOREIGN KEY (Author_ID) REFERENCES Author(Author_ID),
                        PRIMARY KEY (Article_ID, Author_ID)
                    );

                    CREATE TABLE IF NOT EXISTS Video (
                        Video_ID INT NOT NULL AUTO_INCREMENT,
                        Article_ID INT NOT NULL,
                        Name VARCHAR(64) NOT NULL,
                        Directory VARCHAR(64) NOT NULL,
                        PRIMARY KEY (Video_ID),
                        FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID)
                    );

                    CREATE TABLE IF NOT EXISTS Photo (
                        Photo_ID INT NOT NULL AUTO_INCREMENT,
                        Article_ID INT NOT NULL,
                        Name VARCHAR(64) NOT NULL,
                        Directory VARCHAR(64) NOT NULL,
                        PRIMARY KEY (Photo_ID),
                        FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID)
                    );

                    CREATE TABLE IF NOT EXISTS Category (
                        Category_ID INT NOT NULL AUTO_INCREMENT,
                        Name VARCHAR(64) NOT NULL,
                        PRIMARY KEY (Category_ID)
                    );

                    ALTER TABLE Article
                    ADD CONSTRAINT Category_ID
                    FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID);

                    CREATE TABLE IF NOT EXISTS Tag (
                        Tag_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                        Keyword VARCHAR(64) NOT NULL
                    );

                    CREATE TABLE IF NOT EXISTS ArticleTag (
                        Article_ID INT NOT NULL,
                        Tag_ID INT NOT NULL,
                        PRIMARY KEY (Article_ID, Tag_ID),
                        FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID),
                        FOREIGN KEY (Tag_ID) REFERENCES Tag(Tag_ID)
                    );
                    """,
                multi = True)

#Create Categories
##categories = ["Politics", "Business", "Technology",
##"Health", "Entertainment", "Opinion/Editorial","International News"]
##sql = ("INSERT INTO Category (Name) VALUES (%s)")
##
##for category in categories:
##    mycursor.execute(sql, (category, ))
##    mydb.commit()

#Create Tags
##tags = ["Political", "Biz", "Tech",
##"Health", "Entertainment", "Opinion", "Global", "Fashion", "Beauty", "Finance"]
##sql = ("INSERT INTO Tag (Keyword) VALUES (%s)")
##
##for tag in tags:
##    mycursor.execute(sql, (tag, ))
##    mydb.commit()

#Reset Auto_Increment
##mycursor.execute("ALTER TABLE Article AUTO_INCREMENT = 1")

##file_path = "Articles.xlsx"
##df = pd.read_excel(file_path)
##articles_dict = df.to_dict(orient='records')
##sql_article = ("INSERT INTO Article (Category_ID, Title, Description, Date) VALUES (%s, %s, %s, %s)")
##for article in articles_dict:
##    data_article = (article["Category_ID"], article["Title"], article["Description"], article["Date"])
##    mycursor.execute(sql_article, data_article)
##    mydb.commit()

#Collecting Tags and Articles
mycursor.execute("INSERT INTO ArticleTag (Article_ID, Tag_ID) VALUES (6, 2), (7, 3),(8, 3), (9, 3), (10, 4), (11, 4), (12, 4), (13, 5), (14, 5), (15, 5),(16, 6), (17, 6), (18, 6), (19, 7), (20, 7), (21, 7);")
mydb.commit()

