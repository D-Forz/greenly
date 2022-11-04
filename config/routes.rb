Rails.application.routes.draw do
  devise_for :users, path: '/', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  root to: "pages#home"

  resources :users, only: [:show], path: 'profile', as: :profile, param: :slug

  resources :events do
    resources :attendances, only: [:create]
    resources :comments, only: %i[create]
  end

  resources :posts do
    resources :comments, only: %i[create]
  end

  resources :comments, only: %i[destroy]
  resources :favorites, only: %i[index create destroy]
  resources :likes, only: %i[create destroy]
end
