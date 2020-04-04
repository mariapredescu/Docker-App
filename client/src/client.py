import null as null
import requests
import sys
import json

if __name__ == "__main__":
    command = sys.stdin.readline()
    command = command.strip('\n')
    if command == 'start':
        print("Welcome to MyBooksApp! Type one of the following numbers corresponding to the desired action:\n")
        print("1. I want a book recommendation\n")
        print("2. I want to register a book I read\n")
        print("3. List your read books\n")
        print("4. Exit app\n")

        while True:
            cmd = sys.stdin.readline()
            cmd = cmd.strip('\n')
            book_type = None
            gender = None
            if cmd == "1":
                print("What type of book would you want to read?:\n")
                print("1. Poetry\n")
                print("2. Novel\n")
                print("3. Short story\n")
                book_type_cmd = sys.stdin.readline()
                book_type_cmd = book_type_cmd.strip("\n")
                if book_type_cmd == "1":
                    book_type = "Poetry"
                    print("What gender would you want the book to be?\n")
                    print("1. Modernism\n")
                    print("2. Romanticism\n")
                    print("3. Postmodernism\n")
                    print("4. Symbolism\n")
                    gender_cmd = sys.stdin.readline()
                    gender_cmd = gender_cmd.strip("\n")
                    if gender_cmd == "1":
                        gender = "Modernism"
                    elif gender_cmd == "2":
                        gender = "Romanticism"
                    elif gender_cmd == "3":
                        gender = "Postmodernism"
                    elif gender_cmd == "4":
                        gender = "Symbolism"
                elif book_type_cmd == "2":
                    book_type = "Novel"
                    print("What gender would you want the book to be?\n")
                    print("1. Science fiction\n")
                    print("2. Mystery fiction\n")
                    print("3. Biography\n")
                    print("4. Fantasy\n")
                    print("5. Literary fiction\n")
                    gender_cmd = sys.stdin.readline()
                    gender_cmd = gender_cmd.strip("\n")
                    if gender_cmd == "1":
                        gender = "Science fiction"
                    elif gender_cmd == "2":
                        gender = "Mystery fiction"
                    elif gender_cmd == "3":
                        gender = "Biography"
                    elif gender_cmd == "4":
                        gender = "Fantasy"
                    elif gender_cmd == "5":
                        gender = "Literary fiction"
                elif book_type_cmd == "3":
                    book_type = "Short story"
                    print("What gender would you want the book to be?\n")
                    print("1. Science fiction\n")
                    print("2. Romanticism\n")
                    print("3. Victorian literature\n")
                    gender_cmd = sys.stdin.readline()
                    gender_cmd = gender_cmd.strip("\n")
                    if gender_cmd == "1":
                        gender = "Science fiction"
                    elif gender_cmd == "2":
                        gender = "Romanticism"
                    elif gender_cmd == "3":
                        gender = "Victorian literature"
                print(book_type, gender)
                response = requests.post("http://server:5000/recommendation", json={'book_type': book_type, 'gender': gender})
                print("We recommend you these books:\n")
                print(response.text)
            elif cmd == "2":
                print("Write your username:\n")
                username = sys.stdin.readline()
                username = username.strip("\n")
                print("Write the title of the book you want to register:\n")
                book_name = sys.stdin.readline()
                book_name = book_name.strip("\n")
                print("Write the author of the book you want to register:\n")
                author_name = sys.stdin.readline()
                author_name = author_name.strip("\n")
                response = requests.get("http://server:5000/registerBook", json={'username': username, 'book_name': book_name, 'author_name': author_name})
                print("Your book has been registered!")
            elif cmd == "3":
                print("Write your username:\n")
                username = sys.stdin.readline()
                username = username.strip("\n")
                response = requests.post("http://server:5000/getReadBooks", json={'username': username})
                print("These are the books you read:\n")
                print(response.text)
            elif cmd == "4":
                break

