Rails.application.routes.draw do

  root to: 'bundles#index'
  resources :questions
  resources :bundles
  resources :users

  
end
