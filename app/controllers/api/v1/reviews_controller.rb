class Api::V1::ReviewsController < ApplicationController

  def index
    if reviews
      render json: reviews
    else
      render json: { message: "No reviews found"}, status: 404
    end  
  end
  
  def show
    if review
      render json: review
    else
      render json: { message: "Review not found"}, status: 422
    end
  end

  def create 
    recipe = Recipe.find_by_id(params[:recipe_id])
    review = recipe.reviews.create(review_params)
    if review.save
      render json: review
    end
  end

  def destroy
    if review.destroy
      head :no_content
    else
      render json: { message: "review was not destroyed" }
    end
  end


  private

  def reviews
    @recipe ||= Recipe.find_by_id(params[:recipe_id])
    @reviews = @recipe.reviews unless @recipe.nil?
  end

  def review
    @review = reviews.find_by_id(params[:id]) unless reviews.nil?
  end

  def recipe
    @recipe ||= Recipe.find_by_id(params[:recipd_id])
  end

  def review_params
    params.require(:review).permit(:id, :recipe_id, :rating, :content, :user_id)
  end
end
