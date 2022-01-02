Rails.application.routes.draw do
  resources :empresas
  devise_for :usuarios
  root 'home#index'
  
  post "/" => 'home#index'
end
