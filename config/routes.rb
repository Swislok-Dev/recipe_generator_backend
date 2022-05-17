Rails.application.routes.draw do



  resources :recipes do
    resources :reviews, only: [:index, :show, :create]
  end

  get'/reviews',     to: 'reviews#reviews_index'
  
  # resources :users, only: [:create, :show, :index] 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
