class Api::V1::ReviewsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }
  before_action :authorize_user, except: [:show, :index]

  def create
    review = Review.create(review_params)
    review.user = current_user
      if review.save
        render json: review
      else
        render json: {error: review.errors.full_messages}, status: :unprocessable_entity
      end
  end

  def show
    review = Review.find(params[:id])
    render json: review
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :book_id, :likes, :dislikes, :user_id)
  end

  def authorize_user
    if !current_user
      render json: {error: "Please sign up or sign in to access this feature."}, status: :unprocessable_entity
    end
  end

  def current_user_access
    current_user.id == Review.find(params[:id]).user_id
  end
end
