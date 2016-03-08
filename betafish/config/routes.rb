Rails.application.routes.draw do
  resources :users, except: :index
  resources :stories do
    resources :replies, except: [:index, :show], shallow: true do
      resources :ratings, only: [:new, :create], shallow: true
    end
  end

  resources :genres, except: [:edit, :update, :destroy]
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"
end
