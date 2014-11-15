Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'sessions/create'

  get 'sessions/destroy'

  root to: 'bundles#index'
  resources :questions
  resources :bundles
  resources :users

  
end
