class LikesController < ApplicationController
  def create
    @likeable = likeable
    @like = @likeable.likes.create
    @like.user = current_user
    authorize @like
    @like.save
    redirect_back_or_to root_path
  end

  def destroy
    @like = current_user.likes.find_by(likeable_id: params[:id])
    authorize @like
    @like.destroy
    redirect_back_or_to root_path
  end

  private

  def likeable
    return Post.find(params[:post_id]) if params[:post_id]
    return Event.find(params[:event_id]) if params[:event_id]
  end
end
