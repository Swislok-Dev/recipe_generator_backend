class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients, :instructions
  has_many :reviews
  
  # def reviews
  #   self.object.reviews.count
  # end

end
