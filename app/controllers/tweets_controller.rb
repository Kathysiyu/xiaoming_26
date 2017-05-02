class TweetsController < ApplicationController

before_action :move_to_index, except: [:index,:toppage]


  def toppage #トップページ
  end

  def index #ツイットを表示する
    @tweets = Tweet.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new

  end

  def create #新しいツイットを作成
      Tweet.create(text: tweet_params[:text], user_id: current_user.id)
    end

  def destroy
      tweet = Tweet.find(params[:id])
      if tweet.user_id == current_user.id
        tweet.destroy
      end
    end

  def show
    @tweet = Tweet.find(params[:id])
    @replies = @tweet.replies.includes(:user)
  end

  private
    def tweet_params
      params.permit(:text)
    end

  def move_to_index
      redirect_to action: :index unless user_signed_in?
    end

end
