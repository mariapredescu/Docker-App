import mysql.connector
import sys

connection = None
cursor = None


def connect_database():
    global connection
    global cursor

    connection = mysql.connector.connect(
        host='database',
        port='3306',
        user='root',
        passwd='1234',
        database='mydb'
    )
    cursor = connection.cursor()


if __name__ == '__main__':
    connect_database()
    command = sys.stdin.readline()
    command = command.strip('\n')
    if command == 'start':
        print("Welcome to MyBooksApp! Type one of the following numbers corresponding to the desired action:\n")
        print("1. I want add a new book\n")
        print("2. I want to remove an existing\n")
        print("3. List books by book type\n")
        print("4. Exit app\n")

        while True:
            cmd = sys.stdin.readline()
            cmd = cmd.strip('\n')
            if cmd == "1":
                print("Enter the title of the book you want to add\n")
                name = sys.stdin.readline()
                name = name.strip("\n")
                print("Enter the author name of the book you want to add\n")
                author_name = sys.stdin.readline()
                author_name = author_name.strip("\n")
                print("Enter the gender of the book you want to add\n")
                gender = sys.stdin.readline()
                gender = gender.strip("\n")
                print("Enter the type of the book you want to add\n")
                book_type = sys.stdin.readline()
                book_type = book_type.strip("\n")

                sql = "INSERT INTO books (name, author_name, gender, book_type) VALUES (%s, %s, %s, %s)"
                data = (name, author_name, gender, book_type)
                cursor.execute(sql, data)
                connection.commit()
                print("The book has been added!")
            elif cmd == "2":
                print("Enter the name of the book you want to remove\n")
                name = sys.stdin.readline()
                name = name.strip("\n")
                print("Enter the author name of the book you want to remove\n")
                author_name = sys.stdin.readline()
                author_name = author_name.strip("\n")

                sql = "DELETE FROM books WHERE name = %s AND author_name = %s"
                data = (name, author_name)

                cursor.execute(sql, data)
                connection.commit()
                print("The book has been removed!\n")
            elif cmd == "3":
                print("Enter the type of the books you want to list\n")
                book_type = sys.stdin.readline()
                book_type = book_type.strip("\n")
                sql = "SELECT name, author_name, book_type, gender FROM books WHERE book_type = %s"

                data = (book_type, )
                cursor.execute(sql, data)
                results = cursor.fetchall()
                print("Printing registered books\n")
                for row in results:
                    print("Title: ", row[0])
                    print("Author name: ", row[1])
                    print("Book type: ", row[2])
                    print("Gender: ", row[3])
                    print("\n")

            elif cmd == "4":
                break

    cursor.close()
    connection.close()
