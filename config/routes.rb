Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :mushrooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 root "mushrooms#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
