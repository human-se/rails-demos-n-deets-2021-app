Rails.application.routes.draw do

  root to: redirect('/todos')

  get 'todos', to: 'todos#index', as: 'todos'
  post 'todos', to: 'todos#create'
  get 'todos/new', to: 'todos#new', as: 'new_todo'
  get 'todos/:id', to: 'todos#show', as: 'todo'

end
