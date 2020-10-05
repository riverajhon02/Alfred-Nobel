Rails.application.routes.draw do
 
 
  namespace :cursos do
    get 'users/index'
  end
  # Ruta por defecto
  root to: 'noticias#index'
 
  devise_for :users
  resources :noticias
  resources :materias
  resources :roles


  # Rutas anidadas
  resources :users do
    resources :anotaciones, module: :users
  end

  resources :cursos do
    resources :users, module: :cursos
  end

  resources :materias do
    resources :notas, module: :materias
  end



  

end
