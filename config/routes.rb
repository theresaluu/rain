Rails.application.routes.draw do
  get 'sessions/new'

  root to: 'emoji#menu'

  resources :users
end
