Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      resources :recipes do
        resources :reviews, only: [:index, :show, :create, :destroy]
      end
    end
  end

  get'/reviews',     to: 'reviews#reviews_index'
  
  # resources :users, only: [:create, :show, :index] 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
