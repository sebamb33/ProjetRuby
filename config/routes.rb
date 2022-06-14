Rails.application.routes.draw do
  devise_for :users
  resources :reservations
  resources :vols
  resources :aeroports
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
