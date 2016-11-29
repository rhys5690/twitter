class PagesController < ApplicationController
  def index
  end

  def home

  @tweets = Tweet.all
  end

  def profile
    # get the username from the url :id
  if (User.find_by_username(params[:id]))
    @username = params[:id]
  else
    redirect_to root_path, :notice=> "User not found"
    end
  @tweets = Tweet.all.where("user_id = ?", User.find_by_username(params[:id]).id)
  @newTweet = Tweet.new
  end


  def explore
  @tweets = Tweet.all
  end
end
