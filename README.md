# TODO list app

## Tech stack

- Rails 3.2
- Bootstrap
- AngularJS / CoffeeScript
- Angular UI / Bootstrap / SASS
- PostgreSQL
- RSpec/Turnip

## Tests
Turnip is used for acceptance tests

Acceptance tests are written for:
- Existing user login
- New visitor sign up
- Todo list shows all todo items of a user

They can be found at /spec/acceptance

## Sign-up/in assumptions
Sign-in and sign-up functionality is combined. If the user logs in with an email that doesn't exist, 
a new user is created and immediately logged in.

## Model responsibilities

### Move Up/Down todo items
Right now the ordering logic is inside TodoItem model, though it's better to move it to User model

## Transactions
Some operations should be transactional (example: move up/down items)
