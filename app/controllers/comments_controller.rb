class CommentsController < ApplicationController
  def create
    @commentable = commentable
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user
    authorize @comment
    if @comment.save
      redirect_back_or_to @commentable, notice: 'Comment was successfully created.'
    else
      redirect_back_or_to @commentable, alert: 'Comment was not created.'
    end
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
