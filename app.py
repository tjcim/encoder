from flask import Flask, render_template, request


app = Flask(__name__)


def encode(content):
    return content


def decode(content):
    return content


@app.route("/")
def home():
    return render_template("home.html")


@app.route("/api/encode", methods=["POST"])
def calc_length():
    data = request.json
    text = encode(data["content"])
    return {"text": text}
