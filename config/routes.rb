Rails.application.routes.draw do
  resources :customers
  resources :locations
  root 'customers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
