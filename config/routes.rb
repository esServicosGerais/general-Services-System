Rails.application.routes.draw do
  resources :servicos
  resources :clientes
  resources :trabalhadors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get '/servicos', to: 'servicos#index'
  get '/clientes', to: 'clientes#index'
  get '/trabalhadors', to: 'trabalhadors#index'
  root "index#index"
end
