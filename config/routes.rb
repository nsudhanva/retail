Rails.application.routes.draw do
  resources :deposits
  resources :receipts
  resources :discount_types
  resources :payment_types
  get '/clients/get_client'

  resources :invoices
  resources :taxes
  resources :employees
  resources :dashboards, only: [:index]
  resources :vendors
  resources :clients
  resources :products
  resources :sub_categories
  resources :categories

  root to: "dashboards#index"

  resources :products do
    collection { post :import }
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
