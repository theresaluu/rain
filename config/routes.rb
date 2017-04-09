require 'api_constraints'

Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :emotions
    end
  end

  resources :users
  resources :sessions
  resources :emotions, except: :destroy
  resources :categories, only: [:index]

  root to: 'emoji#menu'
end
