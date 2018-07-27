Rails.application.routes.draw do
  

  resources :categories
  resources :posts
  resources :incomes
  resources :general_spends
  resources :cost_centers
  resources :type_spends
  devise_for :users
  
  root 'home#inicio'
  
  
  get "contacts", to: "contacts#index"

    post "cambios/:id", to: "posts#cambios", as: "cambios"
  
  post "create_contacts", to: "contacts#create", as: "create_contacts"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
