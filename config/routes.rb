Rails.application.routes.draw do
  devise_for :users
  resources :todoings 
  root 'todoings#index'
  delete '/logout', to: 'sessions#destroy', as: :logout


end
