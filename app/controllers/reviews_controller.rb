class ReviewsController < ApplicationController

  def reviews_index
    reviews = Review.all
    if reviews.present? && !reviews.nil?
      render json: reviews
    else
      render json: { message: "No reviews found" }
    end
  end

  def index 
    recipe = Recipe.find_by_id(params[:recipe_id])
    if !recipe
      render json: { message: "No recipe for these reviews" }
      return
    end
    reviews = recipe.reviews unless recipe.nil?
    if reviews.present? 
      render json: reviews
    else
      render json: { message: "No reviews found" }
    end
  end

  def show
    @review = find_review
    if @review
      render json: @review
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

  def find_recipe 
    @recipe = Recipe.find_by_id(params[:recipe_id])
  end
  
  def recipe_reviews
    @recipe = Recipe.find_by_id(params[:recipe_id]).reviews
  end
  
  def find_review
    @review = recipe_reviews.find_by(id: params[:id])
  end

  def review_params
    params.require(:review).permit(:id, :recipe_id, :rating, :content)
  end
end
