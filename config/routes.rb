AdsMex::Application.routes.draw do

  resources :subproductos
  resources :metodologias
  resources :productos
  resources :archivos
  resources :cursos
  root to: 'adsmex#home'
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  match '/users/auth/facebook' => 'devise/omniauth_callbacks#passthru',  via: 'get'
  match 'auth/:provider/callback', to: 'sessions#create',   via: 'get'
  match 'auth/failure', to: redirect('/'),                  via: 'get'
  match '/users/sign_out',    to: 'devise/sessions#destroy',    via: 'post'
  match '/index',    to: 'adsmex#index',    via: 'get'
  match '/productos',    to: 'adsmex#productos',    via: 'get'
  match '/qda',    to: 'adsmex#qda',    via: 'get'
  match '/terminos',    to: 'adsmex#terminos',    via: 'get'
  match '/nosotros',   to: 'adsmex#nosotros',   via: 'get'
  match '/contacto', to: 'adsmex#contacto', via: 'get'
  match '/realidad_aumentada', to: 'adsmex#realidad_aumentada', via: 'get'

  resources :users do
    member do
      get :following, :followers
    end

  end

  resources :cursosusuario
  resources :users
  resources :contacts
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]





end
