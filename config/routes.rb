Rails.application.routes.draw do
root 'restaurants#index'
  resources :restaurants
  resources :reservations
  resources :users, only: [:new, :create]

end
