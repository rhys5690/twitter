class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.tweet_id = params[:tweet_id]
    if @comment.save
      redirect_to "", notice: "You created a comment ;)"
    else
      redirect_to "", notice: "comment not saved. Might be a bug!"
    end

  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
