# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# swislok = User.create(username: "Swislok", password: "123")

recipe_1 = swislok.recipes.create(
  name: "The Classic BLT",
  ingredients: "4 slices of bacon, 2 leaves of lettuce, 2 slices of tomato, 2 slices of toasted bread, 1 tablespoon of mayonnaise", 
  instructions: "Cook the bacon in a skillet over medium-high heat until browned. Arrange the cooked bacon, lettuce, and tomato slices on one slice of bread. Spread one side of remaining bread slice with the mayo. Bring the two pieces together to make a sandwich."
)

# one_recipe = Recipe.create(
#   name: "The Classic BLT", 
#   ingredients: "4 slices of bacon, 2 leaves of lettuce, 2 slices of tomato, 2 slices of toasted bread, 1 tablespoon of mayonnaise", 
#   instructions: "Cook the bacon in a skillet over medium-high heat until browned. Arrange the cooked bacon, lettuce, and tomato slices on one slice of bread. Spread one side of remaining bread slice with the mayo. Bring the two pieces together to make a sandwich.",
# )

# one_recipe.reviews.create(
#   rating: 3,
#   content: "This looks pretty basic."
# )

# one_recipe.reviews.create(
#   rating: 5,
#   content: "I think this actually looks pretty good"
# )

# two_recipe = Recipe.create(
#   name: "The Classic BLT 2", 
#   ingredients: "4 slices of bacon, 2 leaves of lettuce, 2 slices of tomato, 2 slices of toasted bread, 1 tablespoon of mayonnaise", 
#   instructions: "Cook the bacon in a skillet over medium-igh heat until browned. Arrange the cooked bacon, lettuce, and tomato slices on one slice of bread. Spread one side of remaining bread slice with the mayo. Bring the two pieces together to make a sandwich.",
# )

# two_recipe.reviews.create(
#   rating: 5,
#   content: "This look pretty great!"
# )

puts "SEEDED"