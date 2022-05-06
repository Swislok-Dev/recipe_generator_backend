class Api::V1::RecipesController < ApplicationController

  def index
    recipes = Recipe.all
    if recipes.present?
      render json: recipes
    else 
      render json: { message: "No recipes found" }, status: 404
    end
  end

  def create
    recipe = Recipe.new(recipe_params)
    if recipe.save
      render json: recipe, serializer: RecipeShowSerializer
    else
      render json: errors(recipe)
    end
  end

  def show
    if recipe
      render json: recipe, serializer: RecipeShowSerializer
    else
      not_found
    end
  end

  def update
    recipe = Recipe.find_by_id(params[:id])
    if recipe
      recipe.update(recipe_params)
      render json: recipe
    else
      not_found
    end
  end

  def destroy
    if recipe
      if recipe.destroy 
        head :no_content
      else
        render json: { error: recipe.errors.full_messages }, status: 422
      end
    else
      not_found
    end
  end

  private

  def recipe
    @recipe = Recipe.find_by_id(params[:id])
  end

  def get_recipe
    @recipe = Recipe.find_by(id: params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :instructions, :user_id)
  end

  def not_found
    render json: { message: "Recipe not found" }, status: 404
  end

  def errors(record)
    { errors: record.errors.full_messages }
  end

end
