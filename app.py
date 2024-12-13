from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "<h1>Welcome to Flask</h2><p>This is the homepage</p>"

@app.route('/about')
def aboutus():
    return "<h1>This is about us page</h1><p>This is a simple flask application version 2</p>"

if __name__ == '__main__':
    app.run(debug=True)