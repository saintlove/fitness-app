Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  post '/users' => 'users#create'
  
    namespace :api do
      #exercises Controller
      get '/exercises' =>'exercises#index'
      get '/exercises/:id' => 'exercises#show'
      post '/exercises' => 'exercises#create'
      patch '/exercises/:id' => 'exercises#update'
      delete '/exercises/:id' => 'exercises#destroy'

      #muscle_groups Controller
      get '/musclegroups' =>'muscle_groups#index'
      get '/musclegroups/:id' => 'muscle_groups#show'
      post '/musclegroups' => 'muscle_groups#create'
      patch '/musclegroups/:id' => 'muscle_groups#update'
      delete '/musclegroups/:id' => 'muscle_groups#destroy'

      #equipments Controller
      get '/equipments' =>'equipments#index'
      get '/equipments/:id' => 'equipments#show'
      post '/equipments' => 'equipments#create'
      patch '/equipments/:id' => 'equipments#update'
      delete '/equipments/:id' => 'equipments#destroy'

      #movements Controller
      get '/movements' =>'movements#index'
      get '/movements/:id' => 'movements#show'
      post '/movements' => 'movements#create'
      patch '/movements/:id' => 'movements#update'
      delete '/movements/:id' => 'movements#destroy'

      #equipment_connections controller
      get '/equipmentconnections' =>'equipment_connections#index'
      get '/equipmentconnections/:id' => 'equipment_connections#show'
      post '/equipmentconnections' => 'equipment_connections#create'
      patch '/equipmentconnections/:id' => 'equipment_connections#update'
      delete '/equipmentconnections/:id' => 'equipment_connections#destroy'

    end
  end

