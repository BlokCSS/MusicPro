Rails.application.routes.draw do
  resources :pedidos
  resources :compras
  resources :usuarios
  resources :instrumentos
  
  root "home#index"


get '/guitarras', to: 'guitarras#index'
get '/bajos', to: 'bajos#index'
get '/baterias', to: 'baterias#index'
get '/accesorios', to: 'accesorios#index'

namespace :api do
  resources :pedidos, only: [:index, :show]
  resources :compras, only: [:index, :show]
end


end
