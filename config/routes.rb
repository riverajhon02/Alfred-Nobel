Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  devise_for :users
  resources :noticias
  resources :users
  get "home/index"
  get "home/minor"

  root to: 'noticias#index'

end
