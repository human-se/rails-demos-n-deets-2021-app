Rails.application.routes.draw do

  get 'todos', to: 'todos#index', as: 'todos'

end
