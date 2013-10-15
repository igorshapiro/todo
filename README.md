# TODO list app

## Tech stack

- Rails 3.2
- Bootstrap
- AngularJS
- Angular UI / Bootstrap
- PostgreSQL

## Sign-up/in assumptions
Sign-in and sign-up functionality is combined. If the user logs in with an email that doesn't exist, 
a new user is created and immediately logged in.

## Model responsibilities

### Move Up/Down todo items
Right now the ordering logic is inside TodoItem model, though it's better to move it to User model

## Transactions
Some operations should be transactional (example: move up/down items)