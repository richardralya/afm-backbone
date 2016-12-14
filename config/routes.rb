Rails.application.routes.draw do

  resources :ratings
  resources :criteria
  resources :view_statuses
  resources :items
 # resources :topics
 # resources :channels
 # resources :orgs
  resources :users

  get '/home' => 'pages#home' 
  get '/profile' => 'pages#profile'
  get '/rate' => 'ratings#new'
  
  root 'welcome_page#welcome'
end
