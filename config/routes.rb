Rails.application.routes.draw do
  devise_for :users

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get '/users/:id', to: 'users#show'
  delete '/users/:id', to: 'users#destroy'


  
  resources :mushrooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 root "users#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
