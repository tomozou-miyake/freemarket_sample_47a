Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tops#index"
  resources :tops, only: :index
  resources :brands
  resources :categories
  resources :mypages


end
