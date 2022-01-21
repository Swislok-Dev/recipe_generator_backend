class Review < ApplicationRecord
  belongs_to :recipe

  validates :rating, numericality: { less_than_or_equal_to: 5, greater_than_or_equal_to: 1 }
  
  scope :index_of_reviews, ->(recipe_id){ where("reviews.recipe_id = ?", recipe_id) }
end
