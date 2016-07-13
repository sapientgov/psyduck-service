# Psyduck
A boilerplate set of ruby services.

## Prerequisites
* Ruby 2.3.1
* Rails 4.2.5
* MongoDB 3.2.7

## API
```
GET /applications.json
GET /applications.json?office=Washington&date=2016-07-01

GET /offices.json

GET /staff.json

POST /validate_passwords.json
```

## Running the server locally
1. build with `bundle install`
2. create a mongodb database: `mkdir -p ~/data/db`
3. start mongodb `mongod --dbpath ~/data/db`
4. run `rails server -p 8080 -b 0.0.0.0`
5. point your browser to: http://localhost:8080/index.html

## Unit Tests
To run the rspec unit tests use `rspec spec`.

Code coverage reports will be generated in the `coverage/` directory.

