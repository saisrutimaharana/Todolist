Rails.application.routes.draw do
  resources :todoings
  root 'todoings#index'  
  resources 'user_permissions'
end
