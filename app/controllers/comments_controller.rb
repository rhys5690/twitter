class CommentsController < ApplicationController

def create
  @tweet = Tweet.new(tweet_params)
  @tweet.user_id = current_user.id
  respond_to do |f|
    if (@tweet.save)
      f.html { redirect_to "", notice: "You created a tweet ;)"}
    else
      f.html { redirect_to "", notice: "Post not saved. Might be a bug!"}
    end
  end
  
end
