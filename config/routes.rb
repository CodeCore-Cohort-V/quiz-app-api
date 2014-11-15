Rails.application.routes.draw do

  get 'sessions/create'

  get 'sessions/destroy'

  root to: 'bundles#index'
  resources :questions
  resources :bundles
  resources :users

  
end
