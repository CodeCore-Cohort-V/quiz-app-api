Rails.application.routes.draw do

  root to: 'bundles#index'
  resources :questions
  resources :bundles
  resources :users
  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

end
