from flask import Flask

app = Flask(__name__)


@app.route('/')
def index():
    return "ceci est la page d'index de la version 1!"

if __name__ == '__main__':
        app.run(host='0.0.0.0', debug=True)
