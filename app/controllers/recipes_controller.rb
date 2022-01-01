class RecipesController < ApplicationController

  def index
    recipes = Recipe.all
    if recipes.present?
      render json: recipes
    else 
      render json: { message: "No recipes found" }
    end
  end

  def create
    recipe = Recipe.create(recipe_params)
    render json: recipe
  end

  def show
    recipe = Recipe.find_by(id: params[:id])
    if recipe
      render json: recipe, serializer: RecipeShowSerializer
    else
      render json: { message: "No recipe found" }
    end
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    render json: recipe
  end

  def destroy
    @recipe.destroy
    render json: recipes
  end

  private

  def get_recipe
    @recipe = Recipe.find_by(id: params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :ingredients, :instructions, :reviews)
  end

end
