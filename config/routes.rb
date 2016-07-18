Rails.application.routes.draw do
  root "products#homepage"
  resources :products
  resources :categories 
end
