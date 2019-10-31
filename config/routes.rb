Rails.application.routes.draw do
  resources :alunos
  resources :turmas
  resources :professors
  resources :materia
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
