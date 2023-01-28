Rails.application.routes.draw do
  resources :medicos
  resources :agendamentos


  get 'static_pages/landing_page'
  get 'static_pages/dashboard'
  get 'pdf', to: 'pdf#index'
  get 'pdf_download', to: 'pdf#download'
 

 
  devise_for :users

  root 'static_pages#landing_page'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
