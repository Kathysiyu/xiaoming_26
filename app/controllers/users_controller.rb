class UsersController < ApplicationController
    def show
      @user = User.find(params[:id])
      @tweets = @user.tweets.page(params[:page]).per(5).order("created_at DESC")
      @review = Review.new
      @reviews = @user.reviews
    end

    def create
      @review = Review.new(review_params)
      @review.save
      redirect_to user_path
    end

  private
  def review_params
     params.require(:review).permit(:rate, :review).merge(user_id: params[:user_id])
  end

  end
