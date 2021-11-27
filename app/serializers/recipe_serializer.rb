class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :ingredients, :instructions, :image
end
