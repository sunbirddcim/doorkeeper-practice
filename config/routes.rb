# frozen_string_literal: true

Rails.application.routes.draw do
  resources :events, only: [:index, :show, :destroy] do
    delete :all, on: :collection, action: :destroy_all
  end

  use_doorkeeper do
    controllers applications: 'oauth_applications'
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # Project administration via UI
  resources :projects

  namespace :api do
    namespace :v1 do
      resources :events, only: [:index, :create]
      resources :projects
      get '/me' => 'credentials#me'
    end
  end

  root to: 'home#index'
end
