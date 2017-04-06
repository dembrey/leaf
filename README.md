# README

GET REQUESTS

/api/employers/:id
shows a single employer
requires employer_id
returns employer + jobs posted by that employer

/api/users/:id
shows a single user
requires user_id
returns user + skills of that user

POST REQUESTS

/api/employers
creates employer
requires root key of 'employer' as in: { "employer": { "company_name": "asdfa" etc. etc.} }
requires company_name, contact_name, contact_phone, about, password
returns token

/api/users
creates a user
requires root key of 'user' as in: { "user": { "first_name": "asdfa" etc. etc.} }
requires first_name, last_name, username, password
returns token

/login
logs in a user or an employer
requires username and password if user
requires company_name and password if employer
returns either user or employer token and id
