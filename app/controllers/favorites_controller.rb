class FavoritesController < ApplicationController
  def index
    @favorites = policy_scope(Favorite)
  end

  def create
    @favoritable = favoritable
    @favorite = @favoritable.favorites.create(user: current_user)
    authorize @favorite
    if @favorite.save
      redirect_back_or_to root_path, notice: 'Favorite created'
    else
      redirect_back_or_to root_path, alert: 'Favorite not created'
    end
  end

  def destroy
    @favorite = current_user.favorites.find_by(favoritable_id: params[:id])
    authorize @favorite
    @favorite.destroy
    redirect_back_or_to root_path, notice: 'Favorite destroyed'
  end

  private

  def favoritable
    return Post.find(params[:post_id]) if params[:post_id]
    return Event.find(params[:event_id]) if params[:event_id]
  end
end
