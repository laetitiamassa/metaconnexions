Rails.application.routes.draw do
  resources :interests
  resources :skills
  resources :interest_names
  resources :skill_names
  root to: 'visitors#home'
  
  devise_for :users
  resources :users
end
