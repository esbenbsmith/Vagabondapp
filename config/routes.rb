Rails.application.routes.draw do

  #root page CITIES
  root 'cities#index'

  #USERS
  #signup form
  get '/signup', to: 'users#new'
  #profile page
  get '/profile', to: 'users#show'
  resources :users, only: [:create, :edit, :update]

  #login
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  #POSTS
  resources :posts

  
end
