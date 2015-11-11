Rails.application.routes.draw do
  resources :vendedor_clientes
  resources :vendedors
  resources :alquilers
  resources :clientes
  resources :peliculas
  devise_for :usuarios
  get 'inicio/index'
  root 'inicio#index'
end
