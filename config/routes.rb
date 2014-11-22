Rails.application.routes.draw do
  root 'items#index'
  resources :items, only: [:show]
  resources :item_requests, only: [:new, :create]
end
