from flask import Flask

app = Flask(__name__)

@app.route('/home')
def home():
    return "Flask App in MyBinder"


@app.route('/double/<number>')
def double(number):
    try:
        return "{}".format(int(number) * 2)
    except:
        return "Not a Number: {}".format(number)


@app.route('/biblio/<id>')
def bib_lookup(id):
    return "?"

app.run(port=5030)
