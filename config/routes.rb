Rails.application.routes.draw do

  get 'sessions/new'

  resources :ratings
  resources :criteria
  resources :view_statuses
  resources :items
 # resources :topics
 # resources :channels
 # resources :orgs
  resources :users
  resources :sessions

  get '/signup' => 'users#new' 
  get '/signin' => 'sessions#new' 
  post '/login' => 'sessions#create' 
  get '/signout' => 'sessions#destroy' 
  
  
  get '/home' => 'pages#home' 
  get '/profile' => 'pages#profile'
  get '/rate' => 'ratings#new'
  
  root 'welcome_page#welcome'
end
