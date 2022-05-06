Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      resources :recipes do
        resources :reviews, only: [:index, :show, :create, :destroy]
      end
    end
  end

end
