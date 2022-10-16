class FavoritesController < ApplicationController
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
    @favorite = Favorite.find_by(favoritable_id: params[:id], user: current_user)
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
