Rails.application.routes.draw do
 

root 'restaurants#index'
  resources :restaurants
  resources :reservations
  resources :users, only: [:new, :create]
   resources :sessions, only: [:new, :create, :destroy]
   resources :restaurants do
   	resources :reservations, only: [:show, :create, :destroy]
   end

end
