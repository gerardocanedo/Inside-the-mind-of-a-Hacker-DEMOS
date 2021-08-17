from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# init SQLAlchemy so we can use it later in our models
db = SQLAlchemy()

SQLALCHEMY_TRACK_MODIFICATIONS = False

app.secret_key = 'secret-key-goes-here'

app.config['SQLALCHEMY_DATABASE_URI'] = (
    'postgresql://'
    'postgres:postgres@db:5432/Sales')

db.init_app(app)

from . import routes