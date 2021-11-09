class RecipeIngredient < ApplicationRecord
  belongs_to :ingredients
  belongs_to :recipes
end
