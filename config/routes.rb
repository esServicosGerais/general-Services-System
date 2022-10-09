Rails.application.routes.draw do
  resources :contratos
  resources :servicos
  resources :clientes
  resources :trabalhadors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "index#index"
end
