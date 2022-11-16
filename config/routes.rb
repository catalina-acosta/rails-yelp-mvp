Rails.application.routes.draw do
  # root to: "restaurants#index"
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id', to: 'restaurants#show'
  # resources :restaurants
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
