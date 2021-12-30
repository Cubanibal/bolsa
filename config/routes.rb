Rails.application.routes.draw do
  devise_for :usuarios
  root 'home#index'
  
  post "/" => 'home#index'
end
