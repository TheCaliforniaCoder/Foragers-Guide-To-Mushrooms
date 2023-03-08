
Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' }
 
  get 'login', to: 'sessions#new'
  get '/users/home', to: 'users#home', as: 'users_home'
  post 'login', to: 'sessions#create'
  delete '/users/:id', to: 'users#destroy'
  resources :users, only: [:index, :show, :users_home]

  resources :mushrooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 root "users#home"
  # Defines the root path route ("/")
  # root "articles#index"
end
