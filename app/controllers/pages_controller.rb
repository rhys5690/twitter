class PagesController < ApplicationController

  helper_method :resource_name, :resource, :devise_mapping

  def index

  end

  def home
    @tweets = Tweet.all
    @newTweet = Tweet.new

    @comment = Comment.new
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

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

end
