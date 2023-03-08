
Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' }
 
  get 'login', to: 'sessions#new'
  get '/users/home', to: 'users#home', as: 'users_home'
  get '/mushrooms/tools', to: 'mushrooms#tools', as: 'mushrooms_tools'
  post 'login', to: 'sessions#create'
  delete '/users/:id', to: 'users#destroy'
  resources :users, only: [:index, :show, :users_home]

  resources :mushrooms 
  root "users#home"
end
