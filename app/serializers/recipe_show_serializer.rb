class RecipeShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients, :instructions
  has_many :reviews
end
