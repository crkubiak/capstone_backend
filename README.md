# Capstone Backend
> This repository contains the backend for my 8th light apprencticeship capstone project.  The full project is an Android/Kotlin front end with a Ruby on Rails(API only) backend.

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Status](#status)
* [Inspiration](#inspiration)
* [Contact](#contact)

## General info
The backend is written in Ruby/Rails with the API only mode activated.  The testing suite is RSpec and the database utilizes PostgreSQL.  

## Technologies
* [Ruby](https://www.ruby-lang.org/en/) - v2.6.3
* [Rails](https://rubyonrails.org/) - version 6.0.0
* [RSpec-Rails](https://rspec.info/) - version 3.8.2
* [Devise](https://github.com/plataformatec/devise) - 0.0.0
* [Devise JWT](https://github.com/waiting-for-dev/devise-jwt) - 0.0.0
* [Postgresql](https://www.postgresql.org/)
* [Amazon Web Services S3](https://aws.amazon.com/)

## Setup
To install this repository:
1. Clone it from github.
2. At the terminal enter:
   * `cd capstone_backend`
   * `bundle install`
   * `bundle exec db:drop` <= **This will delete any databases with the name `capstone_backend`**
   * `bundle exec db:create`
   * `bundle exec db:migrate`
   * `rails s` for localhost:3000
   * `rails s -p [port#]` for localhost with a custom port

## Features

* Authentication
* API Endpoints
* Testing

#### To-do list:
* Add RSpec coverage
* Add TravisCI
* Deploy to Heroku
* Add Devise / Devise JWT

## Status
Project is: _in progress_


## Contact
Created by [Charles Kubiak](https://www.linkedin.com/in/charleskubiak/) - feel free to contact me!
