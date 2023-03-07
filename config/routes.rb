Rails.application.routes.draw do
  devise_for :users

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete '/users/:id', to: 'users#destroy'


  # routes.rb
resources :users, only: [:index, :show]
  resources :mushrooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 root "users#home"
  # Defines the root path route ("/")
  # root "articles#index"
end
