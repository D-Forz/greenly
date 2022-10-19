class UsersController < ApplicationController
  def show
    @user = User.friendly.find(params[:slug])
    authorize @user
  end
end
