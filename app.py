from flask import Flask,render_template,request
from flask_sqlalchemy import SQLAlchemy
from flask_mail import Mail
import json


app = Flask(__name__)

with open("config.json", "r") as c:
    my = json.load(c)["my"]

local_server=True
if(local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = my["local_uri"]
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = my["prod_uri"]

db = SQLAlchemy(app)
app.config.update(
    MAIL_SERVER = "smtp.gmail.com",
    MAIL_PORT = "465",
    MAIL_USE_SSL = True,
    MAIL_USERNAME = my["gmail-user"],
    MAIL_PASSWORD = my["gmail-pass"]
)
mail = Mail(app)
class Contact(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), unique=False, nullable=False)
    email = db.Column(db.String(120), unique=False, nullable=False)
    subject = db.Column(db.String(120), unique=False, nullable=False)
    message = db.Column(db.String(120), unique=False, nullable=False)


@app.route("/", methods = ["GET","POST"])
def new():
    if (request.method == 'POST'):

        name = request.form.get('name')
        email = request.form.get('email')
        subject = request.form.get('subject')
        message = request.form.get('message')
        addition = Contact(name=name, email=email, subject=subject, message=message)
        db.session.add(addition)
        db.session.commit()
        mail.send_message("New message from" +name, sender= email, recipients = [my["gmail-user"]], body = message)



    return render_template("index.html",my=my)

app.run(debug=True)


