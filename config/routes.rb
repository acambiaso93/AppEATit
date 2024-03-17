Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resource :dashboard, only: [:show], path: '/dashboard' do
    post :add_ingredient, on: :member
  end

  resource :kitchen, only: [:show], path: '/kitchen' do
    post :add_ingredient, on: :member
  end

  resource :cookbook, only: [:show], path: '/cookbook'

  resource :explore, only: [:show], path: '/explore'

  resources :user_ingredients, only: [:create, :destroy]

  resources :recipes do
    delete :unfavorite, on: :member
  end

  resources :ingredients, only: [:show]

  resources :profiles

  get "favorite", to: "favorites#favorite"
  get "unfavorite", to: "favorites#unfavorite"
end
