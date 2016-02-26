Rails.application.routes.draw do
  resources :users, except: :index
  resources :stories
  resources :replies, only: [:new, :create, :show]
  resources :ratings, only: [:create]
  resources :genres, except: [:edit, :update, :destroy]
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"
end
