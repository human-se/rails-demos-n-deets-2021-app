Rails.application.routes.draw do

  devise_for :users
  root to: redirect('/quizzes')
  
  get 'quizzes', to: 'quizzes#index', as: 'quizzes'
  post 'quizzes', to: 'quizzes#create'
  get 'quizzes/new', to: 'quizzes#new', as: 'new_quiz'
  get 'quizzes/:id', to: 'quizzes#show', as: 'quiz'
  patch 'quizzes/:id', to: 'quizzes#update'
  delete 'quizzes/:id', to: 'quizzes#destroy'
  get 'quizzes/:id/edit', to: 'quizzes#edit', as: 'edit_quiz'

  get 'quizzes/:quiz_id/questions', to: 'questions#index', as: 'quiz_questions'
  post 'quizzes/:quiz_id/questions', to: 'questions#create'
  get 'quizzes/:quiz_id/questions/new', to: 'questions#new', as: 'new_quiz_question'
  get '/quizzes/:quiz_id/questions/:id', to: 'questions#show', as: 'quiz_question'
  patch '/quizzes/:quiz_id/questions/:id', to: 'questions#update'
  delete '/quizzes/:quiz_id/questions/:id', to: 'questions#destroy'
  put '/quizzes/:quiz_id/questions/:id', to: 'questions#update'
  get '/quizzes/:quiz_id/questions/:id/edit', to: 'questions#edit', as: 'edit_quiz_question'

end
