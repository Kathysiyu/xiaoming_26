class RepliesController < ApplicationController

  def create
    @reply = Reply.create(text: reply_params[:text], tweet_id: reply_params[:tweet_id], user_id: current_user.id)
    redirect_to "/tweets/#{@reply.tweet.id}"   #replyと結びつくツイートの詳細画面に遷移する
  end

  private
  def reply_params
    params.permit(:text, :tweet_id)
  end
end