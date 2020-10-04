Rails.application.routes.draw do
resources :noticias
  get "home/index"
  get "home/minor"

  root to: 'noticias#index'

end
