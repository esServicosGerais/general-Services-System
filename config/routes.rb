Rails.application.routes.draw do
  resources :contratos
  devise_for :users
  resources :usuarios
  resources :servicos
  resources :clientes
  resources :trabalhadors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/users/sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session_path
  devise_scope :user do
    get "/users/sign_out" => 'devise/sessions#destroy', as: :destroy_user_session_path
  end
  # Defines the root path route ("/")
  root "index#index"
end
