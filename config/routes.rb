Rails.application.routes.draw do
 
  # Ruta por defecto
  root to: 'noticias#index'
 
  devise_for :users
  resources :noticias
  resources :materias

  # Rutas anidadas
  resources :users do
    resources :anotaciones, module: :users
  end

  resources :materias do
    resources :notas, module: :materias
  end



  

end
