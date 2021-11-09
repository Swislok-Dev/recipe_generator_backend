class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount
end
