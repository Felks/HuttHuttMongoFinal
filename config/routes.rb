HuttHutt::Application.routes.draw do
  
  resources :products

  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
end
