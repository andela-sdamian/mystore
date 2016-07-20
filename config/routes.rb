Rails.application.routes.draw do
  root "products#index"
  get '/products/listing', to: "products#listing", as: :products_listing 
  resources :products
  resources :categories 
end
