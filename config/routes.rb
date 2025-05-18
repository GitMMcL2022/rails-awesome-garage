Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # Shows list of cars
  resources :cars, only: [:index, :show] do
    # allows creation of reviews only
    resources :reviews, only: [ :create]
    # allows the creation of favourites only.
    resources :favourites, only: [:create]
  end

  # allows favourites to be destroyed
  resources :favourites, only: [:index, :destroy]
end
