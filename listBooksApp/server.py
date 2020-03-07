from typing import List, Dict
from flask import Flask
import mysql.connector
import json

app = Flask(__name__)


def list_books_by_author() -> List[Dict]:
    config = {
        'user': 'root',
        'password': '1234',
        'host': 'database',
        'port': '3306',
        'database': 'mydb',
        'auth_plugin': 'mysql_native_password'
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()
    cursor.execute('SELECT name, author_name FROM books WHERE author_name="Truman Capote"')
    results = [{name: author_name} for (name, author_name) in cursor]
    cursor.close()
    connection.close()

    return results


@app.route('/')
def index() -> str:
    return json.dumps({'Books': list_books_by_author()})


if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)