from flask import Flask
app = Flask(__name__)

@app.route('/')
def index():
    octopuses = '🐙' * 10
    return f'<h1>Inky Is Best</h1><p>{octopuses}</p>'


if __name__ == "__main__":
    app.run(debug=True)
