class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :ingredients, :instructions, :reviews
  has_many :reviews
  
  # def reviews
  #   self.object.reviews.count
  # end

end
