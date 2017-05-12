class ReviewsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to :back
  end

  private
  def review_params
     params.require(:review).permit(:rate, :review).merge(user_id: params[:user_id])
  end
end


