from flask import Flask, request, jsonify
import mysql.connector
import json

app = Flask(__name__)

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


@app.route('/')
def hello_world():
    return "hello world"


@app.route('/registerBook', methods=['GET', 'POST'])
def register_book():
    global connection
    global cursor
    books_data = request.get_json(silent=True)
    sql = "INSERT INTO read_books (username, author_name, book_name) VALUES (%s, %s, %s)"

    data = (books_data['username'], books_data['author_name'], books_data['book_name'])
    cursor.execute(sql, data)
    connection.commit()
    return "Your book has been registered!"


@app.route('/recommendation', methods=['GET', 'POST'])
def get_books_recommendation():
    global connection
    global cursor
    books_data = request.get_json(silent=True)
    sql = "SELECT name, author_name, book_type, gender FROM books WHERE book_type = %s AND gender= %s"

    data = (books_data['book_type'], books_data['gender'])
    cursor.execute(sql, data)
    results = cursor.fetchall()
    return jsonify({'Recommended books:': results})


@app.route('/getReadBooks', methods=['GET', 'POST'])
def get_my_read_books():
    global connection
    global cursor
    books_data = request.get_json(silent=True)

    sql = "SELECT book_name, author_name from read_books where username = %s"
    username = (books_data['username'], )
    cursor.execute(sql, username)
    results = cursor.fetchall()

    return jsonify({'Read books:': results})


if __name__ == '__main__':
    connect_database()
    app.run('0.0.0.0', port=5000, debug=True)
