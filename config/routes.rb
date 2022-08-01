Rails.application.routes.draw do
  resources :microposts
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'application#hello'
  # root 'users#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
