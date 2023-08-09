Rails.application.routes.draw do
  devise_for :users
  resources :todoings
  root 'todoings#index'  
  resources :todoings do
    collection do 
      get :log_out
    end
  end
end
