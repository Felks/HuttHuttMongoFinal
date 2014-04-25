HuttHutt::Application.routes.draw do
  devise_for :members
  root to: 'products#index'
  resources :products
  

  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  
  

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'members#new'
  post '/members' => 'members#create'

  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
end
