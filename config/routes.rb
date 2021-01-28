Rails.application.routes.draw do

  root 'static#home', as: 'home'

  ##Session
  get '/client_login', to: 'sessions#client_login', as: 'client_login'
  post '/client_login', to: 'sessions#login_client'
  get '/coach_login', to: 'sessions#coach_login', as: 'coach_login'
  post '/coach_login', to: 'sessions#login_coach'
  delete '/', to: 'sessions#logout', as: 'logout'

  ##Expertise
  post '/expertises', to: 'expertises#create', as: 'new_expertise'
  delete '/expertises/:id', to: 'expertises#destroy', as: 'delete_expertise'

  ##WorkoutExercise
  post '/workout_exercises', to: 'workout_exercises#create', as: 'new_workout_exercise'
  delete '/workout_exercises/:id', to: 'workout_exercises#destroy', as: 'delete_workout_exercise'

  ##Workouts
  get '/workouts', to: 'workouts#index', as: 'workouts'
  get '/workouts/new', to: 'workouts#new', as: 'new_workout'
  post '/workouts', to: 'workouts#create'
  patch '/workouts/:id/completed', to: 'workouts#completed', as: 'completed_workout' 
  get '/workouts/:id', to: 'workouts#show', as: 'workout'
  delete '/workouts/:id', to: 'workouts#destroy', as: 'delete_workout'

  ##Exercise
  get '/exercises', to: 'exercises#index', as: 'exercises'
  get '/exercises/new', to: 'exercises#new', as: 'new_exercise'
  post '/exercises', to: 'exercises#create'
  get '/exercises/:id/edit', to: 'exercises#edit', as: 'edit_exercise'
  patch '/exercises/:id', to: 'exercises#update'
  get '/exercises/:id', to: 'exercises#show', as: 'exercise'

  ##Category
  get '/categories/:id/edit', to: 'categories#edit', as: 'edit_category'
  patch '/categories/:id', to: 'categories#update'
  get '/categories', to: 'categories#index', as: 'categories'
  get '/categories/:id', to: 'categories#show', as:'category'

  ##Coaches
  get '/coaches', to: 'coaches#index', as: 'coaches'
  get '/coaches/new', to: 'coaches#new', as: 'new_coach'
  post '/coaches', to: 'coaches#create'
  get '/coaches/:id/edit', to: 'coaches#edit', as: 'edit_coach'
  patch '/coaches/:id', to: 'coaches#update'
  get '/coaches/:id', to: 'coaches#show', as: 'coach'

  ##Clients
  get '/clients', to: 'clients#index', as: 'clients'
  get '/clients/new', to: 'clients#new', as: 'new_client'
  post '/clients', to: 'clients#create'
  get '/clients/:id/edit', to: 'clients#edit', as: 'edit_client'
  patch '/clients/:id', to: 'clients#update'
  get '/clients/:id', to: 'clients#show', as: 'client'
  
end
