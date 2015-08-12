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

#    Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         cities#index
#    signup GET    /signup(.:format)         users#new
#   profile GET    /profile(.:format)        users#show
#     users POST   /users(.:format)          users#create
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#     login GET    /login(.:format)          sessions#new
#  sessions POST   /sessions(.:format)       sessions#create
#    logout GET    /logout(.:format)         sessions#destroy
#     posts GET    /posts(.:format)          posts#index
#           POST   /posts(.:format)          posts#create
#  new_post GET    /posts/new(.:format)      posts#new
# edit_post GET    /posts/:id/edit(.:format) posts#edit
#      post GET    /posts/:id(.:format)      posts#show
#           PATCH  /posts/:id(.:format)      posts#update
#           PUT    /posts/:id(.:format)      posts#update
#           DELETE /posts/:id(.:format)      posts#destroy
