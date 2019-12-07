Rails.application.routes.draw do
  resources :line_items
  resources :carts
  devise_for :users
  devise_for :admins
  resources :features
  resources :properties
  get 'home/index'
  root 'home#index'
  get '/weather'=>'livedata#index'
  get '/map'=>'maps#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
