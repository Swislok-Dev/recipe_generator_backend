Link to the frontend source code is [here](https://github.com/Swislok-Dev/recipe_generator_frontend)

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## Users

### User model
- username
- password
- favorite_recipe
- reviews

## Reviews

### Review model
- user_id
- recipe_id
- rating

## Create a Recipe

### Recipe model
- recipe_name
- ingredients 
- ingredient_amount
- instructions

### Ingredient model
- name

### Recipe_ingredient model
- name
- ingredient_id
- recipe_id
