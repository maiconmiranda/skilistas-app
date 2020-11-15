Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources :accounts, except: :index
  
  get 'pages/home'
  
end
