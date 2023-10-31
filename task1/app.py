## файл app.py

from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hallo! Wie geht es dir?'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')