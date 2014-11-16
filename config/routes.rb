Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'bundles#index'
  get '/welcome' => 'static#welcome'
  resources :questions
  resources :bundles
  resources :users
  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

  namespace :api do
    resources :attempts, only: [:create]
    resources :bundles,  only: [:show]    
    resources :topics,   only: [:index, :show]    
    resources :queuers,  only: [:index, :create]
  end

end
