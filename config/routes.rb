Rails.application.routes.draw do

  resources :ratings
  resources :criteria
  resources :view_statuses
  resources :items
  resources :topics
  resources :channels
  resources :orgs
  resources :users
  
  get 'pages/home'

  get 'pages/profile'

  get 'items/Index'

  get 'welcome_page/Welcome'
  
  root 'welcome_page#welcome'
end
