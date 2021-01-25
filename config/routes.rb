Rails.application.routes.draw do
  
  ##Workouts
  get '/workouts', to: 'workouts#index', as: 'workouts'
  # get '/workouts/new'
  # get '/workouts/edit'
  get '/workouts/:id', to: 'workouts#show', as: 'workout'

  ##Exercise
  get '/exercises', to: 'exercises#index', as: 'exercises'
  get '/exercises/new', to: 'exercises#new', as: 'new_exercise'
  post '/exercises', to: 'exercises#create'
  # get '/exercises/edit'
  get '/exercises/:id', to: 'exercises#show', as: 'exercise'

  ##Category
  # get '/categories/new'
  # get '/categories/edit'
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
  get '/clients/new', to: 'clients#new', as: 'new_client'
  post '/clients', to: 'clients#create'
  get '/clients/:id/edit', to: 'clients#edit', as: 'edit_client'
  patch '/clients/:id', to: 'clients#update'
  get '/clients/:id', to: 'clients#show', as: 'client'
  
end
