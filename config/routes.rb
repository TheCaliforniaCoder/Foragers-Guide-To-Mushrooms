Rails.application.routes.draw do
  devise_for :users

  get "users/home"
  get '/users/:id', to: 'users#show', as: 'user'

  
  resources :mushrooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 root "users#show"
  # Defines the root path route ("/")
  # root "articles#index"
end
