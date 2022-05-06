class RecipeShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients, :instructions
  has_many :reviews
  belongs_to :user
end
