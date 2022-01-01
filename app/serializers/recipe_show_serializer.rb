class RecipeShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :ingredients, :instructions
  has_many :reviews
end
