Rails.application.routes.draw do
  #get 'materias/index'
  #get 'materias/show'
  #get 'materias/new'
  #get 'materias/edit'
 
  devise_for :users
  resources :noticias
  resources :materias
  resources :users
  get "home/index"
  get "home/minor"

  root to: 'noticias#index'

end
