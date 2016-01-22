Rails.application.routes.draw do
  resources :users, except: :index
  resources :stories
  resources :replies, only: [:new, :create, :show]
  resources :ratings, only: [:create]
  resources :genres, except: [:edit, :update, :destroy]
end
