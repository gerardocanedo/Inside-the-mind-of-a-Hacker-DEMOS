# coding=utf-8
from flask import render_template, flash, redirect, session, url_for, request, g, Markup, make_response
from flask.sessions import NullSession
from werkzeug.security import generate_password_hash, check_password_hash
from .models import User,Invoice
from . import db
from . import app
import sys
import hashlib


@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html')

@app.route('/profile')
def profile():
    return render_template('profile.html')

    
@app.route('/login')
def login():
    return render_template('login.html')

@app.route('/signup')
def signup():
    return render_template('signup.html')

@app.route('/logout')
def logout():
    session.pop('username', None)
    flash('You have been signed out.')
    return redirect(url_for('login'))

@app.route('/signup', methods=['POST'])
def signup_post():
    email = request.form.get('email')
    username = request.form.get('username')
    name = request.form.get('name')
    password = request.form.get('password')

    user = User.query.filter_by(username=username).first() # if this returns a user, then the email already exists in database

    if user: # if a user is found, we want to redirect back to signup page so user can try again
        flash('Email/username already exists')
        return redirect(url_for('signup'))

    # create a new user with the form data. Hash the password so the plaintext version isn't saved.
    new_user = User(email=email, username=username, name=name, password=hashlib.sha1(password).hexdigest())

    # add the new user to the database
    db.session.add(new_user)
    db.session.commit()

    return redirect(url_for('login'))

@app.route('/login', methods=['POST'])
def login_post():
    username = request.form.get('username')
    password = request.form.get('password')
    remember = True if request.form.get('remember') else False

    user = User.query.filter_by(username=username).first()

    # check if the user actually exists
    # take the user-supplied password, hash it, and compare it to the hashed password in the database
    if not user or not hashlib.sha1(password).hexdigest() == user.password: #check_password_hash(user.password, password):
        flash('Please check your login details and try again.')
        return redirect(url_for('login')) # if the user doesn't exist or password is wrong, reload the page

    session['username'] = user.username
    # if the above check passes, then we know the user has the right credentials
    return redirect(url_for('profile'))
    #https://www.digitalocean.com/community/tutorials/how-to-add-authentication-to-your-app-with-flask-login

@app.route('/invoices', methods=['GET'])
def invoices():
    if session.get('username'):
        description = request.args.get('Description')
        if description is None:
            result = db.session.execute('SELECT * FROM invoice')
        else:
            result = db.session.execute('SELECT * FROM invoice WHERE description LIKE \'' + description + '\'')
        return render_template('invoices.html', invoices = result )
    else:
        flash("User not logged in. Please log in.")
        return render_template('login.html')

@app.route('/ger')
def ger():
    return "winniethepooh - " + hashlib.sha1("winniethepooh").hexdigest()