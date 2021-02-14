Rails.application.routes.draw do

  root to: redirect('/todos')

  get 'todos', to: 'todos#index', as: 'todos'
  get 'todos/:id/edit', to: 'todos#edit', as: 'edit_todo'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  patch 'todos/:id', to: 'todos#update'

end
