class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :content, :recipe_id
end
