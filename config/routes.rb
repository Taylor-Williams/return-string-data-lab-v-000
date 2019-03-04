Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:create, :index, :new]
  get '/product/:id/inventory', to: 'products#inventory'
  get '/product/:id/description', to: 'products#description'
end
