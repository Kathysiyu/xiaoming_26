class RepliesController < ApplicationController

   def create
    Reply.create text: reply_params[:text],
                 tweet_id: reply_params[:tweetid],
                 user_id: current_user.id
    render json: { userid: current_user.id, username: current_user.nickname }
   end

  private
  def reply_params
    params.permit(:text, :tweetid)
  end
end