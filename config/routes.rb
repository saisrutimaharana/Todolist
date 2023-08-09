Rails.application.routes.draw do
  devise_for :users
  resources :todoings do
    member do
      delete :log_out
    
    end
  end

  root 'todoings#index'  
  

end
