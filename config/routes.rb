Rails.application.routes.draw do
  # resources :reviews
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # post '/login',     to: 'sessions#create'
  # get '/logged_in',  to: 'sessions#is_logged_in?' 
  # post '/logout',    to: 'sessions#destroy'

  resources :recipes, only: [:index, :show, :create] do
    resources :reviews, only: [:index, :show, :create]
  end

  get'/reviews',     to: 'reviews#index'
  
  # resources :users, only: [:create, :show, :index] 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
