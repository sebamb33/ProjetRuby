Rails.application.routes.draw do
  devise_for :users
  resources :reservations
  resources :vols
  resources :aeroports
  root 'vols#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
