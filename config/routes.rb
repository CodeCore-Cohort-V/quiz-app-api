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

end
