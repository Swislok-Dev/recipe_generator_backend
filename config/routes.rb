Rails.application.routes.draw do
  # resources :reviews
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # post '/login',     to: 'sessions#create'
  # get '/logged_in',  to: 'sessions#is_logged_in?' 
  # post '/logout',    to: 'sessions#destroy'

  namespace :api do
    namespace :v1 do
      resources :recipes do
        resources :reviews, only: [:index, :show, :create]
      end
    end
  end


  get'/api/v1/reviews',     to: 'reviews#index'
end
