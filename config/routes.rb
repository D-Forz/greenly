Rails.application.routes.draw do
  devise_for :users, path: '/', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  root to: "pages#home"

  resources :events do
    resources :attendances, only: [:create]
  end

  resources :posts, only: %i[index]
  resources :comments, only: %i[create update destroy]
end
