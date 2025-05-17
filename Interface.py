from tkinter import *
from tkinter import simpledialog
from datetime import datetime

class UI:
    def __init__(self, mycursor, mydb):
        self.mycursor = mycursor
        self.mydb = mydb
        
        self.window = Tk()
        self.window.title('News Portal')
        self.window.config(padx=200, pady=100, bg='lightblue')

        # List to keep track of secondary action buttons
        self.secondary_buttons = []

        # Create and place the User button
        self.user_button = Button(text='User', command=self.user_action, highlightthickness=0)
        self.user_button.grid(row=0, column=0, padx=10, pady=10)

        # Create and place the Author button
        self.author_button = Button(text='Author', command=self.author_action, highlightthickness=0)
        self.author_button.grid(row=0, column=1, padx=10, pady=10)

        # Create and place the Get Report button
        self.get_report_button = Button(text='Get Report', command=self.get_report_action, highlightthickness=0)
        self.get_report_button.grid(row=0, column=2, padx=10, pady=10)

        self.window.mainloop()

    def user_action(self):
        self.clear_secondary_buttons()
        # Create and place the Create User button
        create_user_button = Button(text='Create User', command=self.create_user_action, highlightthickness=0)
        create_user_button.grid(row=1, column=0, padx=10, pady=10)
        self.secondary_buttons.append(create_user_button)
        
        # Create and place the View Article button
        view_article_button = Button(text='View Article', command=self.view_article_action, highlightthickness=0)
        view_article_button.grid(row=1, column=1, padx=10, pady=10)
        self.secondary_buttons.append(view_article_button)
        
        # Create and place the Search Tag button
        search_tag_button = Button(text='Search Tag', command=self.search_tag_action, highlightthickness=0)
        search_tag_button.grid(row=1, column=2, padx=10, pady=10)
        self.secondary_buttons.append(search_tag_button)

    def author_action(self):
        self.clear_secondary_buttons()
        
        # Create and place the Create Author button
        create_user_button = Button(text='Create Author', command=self.create_author_action, highlightthickness=0)
        create_user_button.grid(row=1, column=0, padx=10, pady=10)
        self.secondary_buttons.append(create_user_button)
        
        # Create and place the Create Article button
        create_article_button = Button(text='Create Article', command=self.create_article_action, highlightthickness=0)
        create_article_button.grid(row=1, column=1, padx=10, pady=10)
        self.secondary_buttons.append(create_article_button)

    def get_report_action(self):
        self.clear_secondary_buttons()
        print("Get Report button clicked")


    def create_user_action(self):
        username = simpledialog.askstring("Enter User Details", "Username:")
        if username is None:
            return
        password = simpledialog.askstring("Enter User Details", "Password:", show="*")
        if password is None:
            return
        email = simpledialog.askstring("Enter User Details", "Email:")
        if email is None:
            return
        sql = ("INSERT INTO User (Username, Password, Email) VALUES (%s, %s, %s)")
        data = (username, password, email)
        self.mycursor.execute(sql, data)
        self.mydb.commit()

    def create_author_action(self):
        username = simpledialog.askstring("Enter User Details", "Username:")
        if username is None:
            return
        password = simpledialog.askstring("Enter User Details", "Password:", show="*")
        if password is None:
            return
        email = simpledialog.askstring("Enter User Details", "Email:")
        if email is None:
            return
        data = (username, password, email)
        self.mycursor.execute(sql, data)
        self.mydb.commit()

    def view_article_action(self):
        print("View Article button clicked")

    def search_tag_action(self):
        # Open a dialog box to ask for the tag
        tag = simpledialog.askstring("Search With Tag", "Enter the tag:")
        if tag is None:
            return
        else:
            print(tag)

    def create_article_action(self):
        Category_ID = simpledialog.askstring("Enter Category ID", "Category ID:")
        if Category_ID is None:
            return
        Title = simpledialog.askstring("Enter Title", "Title:")
        if Title is None:
            return
        Description = simpledialog.askstring("Enter Description", "Description:")
        if Description is None:
            return
        current_time = datetime.now()
        formatted_time = current_time.strftime("%Y-%m-%d %H:%M:%S")
        sql = ("INSERT INTO Author (Username, Password, Email) VALUES (%s, %s, %s)")
        sql = ("INSERT INTO Article (Category_ID, Title, Description, Date) VALUES (%s, %s, %s, %s)")
        data = (Category_ID, Title, Description, formatted_time)
        self.mycursor.execute(sql, data)
        self.mydb.commit()

    def clear_secondary_buttons(self):
        # Remove secondary action buttons from the grid
        for button in self.secondary_buttons:
            button.grid_remove()
        self.secondary_buttons.clear()
