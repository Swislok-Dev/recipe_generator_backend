class Recipe < ApplicationRecord
  has_many :reviews

  validates :name, presence: true, uniqueness: true
  validates :ingredients, presence: true
  validates :instructions, presence: true
end
