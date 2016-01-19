Rails.application.routes.draw do
  resources :shops
  resources :brands
  resources :manufacturers
  resources :regions
  resources :admins
  resources :cosms
  resources :uses
  resources :genders

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  namespace :api do
    resources :genders, only: [:index, :show]
  end
end
