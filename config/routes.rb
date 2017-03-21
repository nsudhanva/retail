Rails.application.routes.draw do
  resources :taxes
  resources :employees
  resources :dashboards, only: [:index]
  resources :vendors
  resources :clients
  resources :products
  resources :sub_categories
  resources :categories

  root to: "dashboards#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
