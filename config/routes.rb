Rails.application.routes.draw do
  devise_for :users
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  get 'sessions/new'
  root 'tasks#index'
  resources :tasks
end
