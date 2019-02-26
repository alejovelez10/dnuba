Rails.application.routes.draw do
  
  resources :invoices, :except => [:show]
  resources :control_times
  resources :experiences
  resources :bank_images
  resources :categories
  resources :posts
  resources :incomes
  resources :general_spends
  resources :cost_centers
  resources :type_spends

  devise_for :users, :controllers => { :registrations => "users/admin" }


  devise_scope :user do
    get "users/new_user", to: "users/admin#new_user", as: "new_user"
    post "crear_user", to: "users/admin#crear_user", as: 'crear_user'
    get "users/index", to: "users/admin#index", as: "usuarios"
    get "users/editar_user/:id/", to: "users/admin#editar_user", as: "editar_user"
    post "update_user", to: "users/admin#update_user", as: "update_user"
    delete "destroy_user/:id", to: "users/admin#destroy_user", as: "destroy_user"


  end

  get "pdf_dnuba/:id", to: "invoices#dnuba_pdf", as: "pdf_dnuba"
  
  root 'home#inicio'

  delete "destroy/:id", to:"contacts#destroy", as: "delete_contact"  


  get "contacts", to: "contacts#index"
  get "all_projects", to: "home#all_projects", as: "all_projects"
  get "show_projects/:id", to: "home#show_projects", as: "show_projects"
  post "cambios/:id", to: "posts#cambios", as: "cambios"
  
  post "create_contacts", to: "contacts#create", as: "create_contacts"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
end
