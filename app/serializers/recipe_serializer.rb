class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients, :instructions, :reviews
  has_many :reviews
  
  # def reviews
  #   self.object.reviews.count
  # end

end
