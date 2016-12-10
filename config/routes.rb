Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/item'

  get 'pages/profile'

  resources :ratings
  resources :criteria
  resources :view_statuses
  resources :items
  resources :topics
  resources :channels
  resources :orgs
  resources :users
  get 'items/Index'
  root 'items#index'
end
