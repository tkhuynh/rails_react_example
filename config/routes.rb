Rails.application.routes.draw do
  root 'dashboard#index'
  namespace :api do
    resources :events, only: [:index, :create, :destroy, :update] do
    	get :search, on: :collection
    end
  end
end