require 'sidekiq/web'

Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  mount Sidekiq::Web => '/sidekiq'
end


