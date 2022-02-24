Link to the frontend source code is [here](https://github.com/Swislok-Dev/recipe_generator_frontend)

# Recipe Generator Backend

## Introduction

This is a backend API run on Ruby on Rails. Data is stored here for the frontend to collect and write to.

Database keeps a collection of recipes with the recipe title, ingredients used, and the instructions for making the recipe.

## Setup

- `bundle install` to bundle all gems
- `rails db:create` to create databases
- `rails db:migrate` to get all migrations
- `rails db:seed` to input seed data
- `rails s` to start server

## License

[MIT](https://github.com/Swislok-Dev/Gunstore/blob/master/LICENSE.md)

## Modals

### Review model

- recipe_id
- rating

### Recipe model

- recipe_title
- ingredients
- instructions
