Rails.application.routes.draw do
  resources :agendamentos
  get 'dashboard_pages/consultas'
  get 'dashboard_pages/agendamentos'
  get 'dashboard_pages/cirurgias'
  get 'static_pages/landing_page'
  get 'static_pages/dashboard'

  devise_for :users

  root 'static_pages#landing_page'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
