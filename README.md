# News-Article-Database

**Overview**

This is a News Portal application built with Python, Tkinter for the GUI, and MySQL for database management. The application allows users to interact with a news database as either regular users or authors, and includes functionality for creating accounts, viewing articles, searching by tags, and creating new articles.

**Features**

User Features:
Create User Account: Register new users with username, password, and email

View Articles: Access news articles (implementation pending)

Search by Tag: Find articles using specific tags

Author Features:
Create Author Account: Register new authors with username, password, and email

Create Articles: Add new articles to the database with title, description, and category

Admin Features:
Database Management: Pre-configured SQL tables for the news portal

Sample Data: Option to load sample categories, tags, and articles

**Installation Prerequisites:**

Python 3.x
MySQL Server
Required Python packages:
mysql-connector-python
pandas (for sample data import)
tkinter

**Database Structure**

The application uses a comprehensive MySQL database with the following tables:

User: Stores user account information

Author: Stores author account information

Article: Contains news articles

Category: Article categories (Politics, Business, Technology, etc.)

Tag: Keywords for article classification

ArticleTag: Many-to-many relationship between articles and tags

Comment: User comments on articles

Views: Tracks which users have viewed which articles

Video/Photo: Multimedia associated with articles

**Usage**

Launch the application to see the main menu with three options: User, Author, and Get Report

Select either User or Author to see secondary actions

Follow the dialog prompts to perform various actions
