Rails.application.routes.draw do
  get 'welcome_page/Welcome'
  root 'welcome_page#welcome'
end
