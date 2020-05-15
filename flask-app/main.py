from flask import Flask

app = Flask(__name__)

@app.route('/home')
def home():
    return "Flask App in MyBinder"


@app.route('/double/<number>')
def home(number):
    try:
        return int(number) * 2
    except:
        return "Not a Number: {}".format(number)



app.run(port=5030)
