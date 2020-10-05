Rails.application.routes.draw do
 
 
  devise_for :users
  resources :noticias
  resources :materias
  resources :users do
    resources :anotaciones, module: :users
  end
  get "home/index"
  get "home/minor"

  root to: 'noticias#index'

  

end
