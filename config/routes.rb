Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'bundles#index'
  get '/welcome' => 'static#welcome'
  resources :questions
  resources :bundles
  resources :users
  resources :user_sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

  namespace :api do
    resources :bundles,  only: [:show], defaults: {format: :json} do
      resources :queuers,  only: [:create], defaults: {format: :json}
    end
    resources :topics,   only: [:index, :show], defaults: {format: :json}
    resources :queuers,  only: [:index], defaults: {format: :json}
    resources :choices, only: [], defaults: {format: :json} do
      resources :attempts, only: [:create], defaults: {format: :json}
    end
  end
      
end
