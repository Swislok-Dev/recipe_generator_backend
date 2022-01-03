class ReviewsController < ApplicationController

  def index
    reviews = Review.all
    render json: reviews
  end
  
  def show
    review = Review.find_by_id(params[:id])
    render json: review
  end

  def create 
    recipe = Recipe.find_by_id(params[:recipe_id])
    review = recipe.reviews.create(review_params)
    if review.save
      render json: review
    end
  end

  private

  def review_params
    params.require(:review).permit(:id, :recipe_id, :rating, :content)
  end
end
