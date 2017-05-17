class ReviewsController < ApplicationController
  def create
    Review.create rate: review_params[:rate],
                  review: review_params[:review],
                  user_id: review_params[:userid],
		  reviewer_id: review_params[:rid]
    render json: { nickname: current_user.nickname }
  end

  private
  def review_params
     params.permit :rate, :review, :userid, :rid
  end
end


