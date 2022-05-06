class Recipe < ApplicationRecord
  has_many :reviews, :dependent => :destroy
  has_many :users

  validates :name, presence: true, uniqueness: true
  validates :ingredients, presence: true
  validates :instructions, presence: true
end
