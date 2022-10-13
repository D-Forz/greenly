Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :events do
    resources :attendances, only: [:create]
  end

  resources :posts, only: %i[index]
end
