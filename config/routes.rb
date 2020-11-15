Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources :accounts, except: :index 
  resources :profiles, except: :index
  get 'pages/home'
  
end
