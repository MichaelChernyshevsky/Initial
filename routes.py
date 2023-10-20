

from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from app import app
from data.sql import SomeClass






@app.get('/get')
def get():
    return jsonify(SomeClass.get());


@app.post('/post')
def post():
    SomeClass.post(
        request.json["title"]
    )
    return jsonify(SomeClass.get());


@app.delete('/delete/<int:id>')
def delete(id):
    SomeClass.delete(id=id)
    return jsonify( SomeClass.get());


if __name__ == "__main__":
    app.run(debug=True,port=5001)
