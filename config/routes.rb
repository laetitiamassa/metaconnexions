Rails.application.routes.draw do
  
  resources :messages
  resources :interests
  resources :skills
  resources :interest_names
  resources :skill_names
  resources :searches

  root to: 'visitors#home'
  
  devise_for :users
  resources :users

end
