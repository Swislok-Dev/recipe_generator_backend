class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :ingredients, :instructions, :reviews

  # def reviews
  #   self.object.reviews.count
  # end

end
