# SBHacks API

## Setting up your development environment

- Clone this repo
- Install ruby 2.7.1, preferably using [rvm](https://rvm.io/rvm/install#basic-install)
- Install [PostgreSQL](https://www.postgresql.org/download/)
 (Note: PostgreSQL must be installed before you run `bundle install`)
- Run `bundle install` to install dependencies
- Run `rails db:create` to create a development and test database (PostgreSQL must be running!)
- Run `rails db:schema:load` to load the database schemas onto the development and test databases
- Run `rails db:seed` to load initial data into the development database
- Obtain the `development.key` and put it in `config/credentials`. This is used for decrypting the encrypted
 secrets file.