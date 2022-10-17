class CommentsController < ApplicationController
  def create
    @commentable = commentable
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user
    authorize @comment
    @comment.save
    redirect_back_or_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def commentable
    return Post.find(params[:post_id]) if params[:post_id]
    return Event.find(params[:event_id]) if params[:event_id]
  end
end
