Rails.application.routes.draw do
  resources :favorites, only: [:create, :destroy]
  resources :reports
  resources :users, only: [:create, :show, :destroy]
  resources :trails, only: [:index, :show]

  get "/me", to: "users#show"
  get "/home_image", to: "trails#home_image"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get '*path', to: 'fallback#index', constraints: ->(req) { !req.xhr? && req.format.html? }
  root to: 'fallback#index'
end
