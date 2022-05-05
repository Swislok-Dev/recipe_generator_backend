class Api::V1::ReviewsController < ApplicationController

  def index
    # reviews = recipe_reviews
    if reviews.present?
      render json: reviews
    else
      render json: { message: "No reviews found"}
    end
  end
  
  def show
    # @review = find_review
    if review
      render json: review
    else
      render json: { message: "Review not found"}, :status => 404
    end
  end

  def create 
    recipe = Recipe.find_by_id(params[:recipe_id])
    review = recipe.reviews.create(review_params)
    if review.save
      render json: review
    end
  end

  def update
    review = find_review
    if review.update(review_params)
      render json: review
    else
      render json: { error: review }
    end
  end

  def delete
    review = find_review
    if review.destroy
      render json: reviews
    else
      render json: { message: "review was not destroyed" }
    end
  end


  private

  def reviews
    @reviews = Recipe.find_by_id(params[:recipe_id]).reviews
  end

  def review
    @review = reviews.find_by_id(params[:id])
  end

  def recipe
    @recipe = Recipe.find_by_id(params[:recipd_id])
  end

  # def recipe_reviews
  #   @recipe = Recipe.find_by(id: params[:recipe_id]).reviews
  # end
  
  # def find_review
  #   @review = reviews.find_by(id: params[:id])
  # end

  # def find_recipe 
  #   @recipe = Recipe.find_by_id(params[:recipe_id])
  # end
  

  def review_params
    params.require(:review).permit(:id, :recipe_id, :rating, :content)
  end
end
