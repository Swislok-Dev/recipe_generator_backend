class Recipe < ApplicationRecord
  has_many :reviews

  validates :title, presence: true, uniqueness: true
  validates :ingredients, presence: true
  validates :instructions, presence: true
end
