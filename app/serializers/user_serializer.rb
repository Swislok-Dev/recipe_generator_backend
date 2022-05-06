class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :recipes
  
  def recipes
    self.object.recipes.map do |recipe|
      recipe.id.to_s + ". " + recipe.name
    end
  end

end
