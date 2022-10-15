Rails.application.routes.draw do
  devise_for :users, path: '/', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  root to: "pages#home"
  get 'profile', to: 'pages#profile', as: :profile
  resources :events do
    resources :attendances, only: [:create]
    resources :comments, only: %i[create update destroy]
  end

  resources :posts, only: %i[index new create edit update destroy] do
    resources :comments, only: %i[create update destroy]
  end
end
