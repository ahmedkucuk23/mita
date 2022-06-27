Rails.application.routes.draw do
  # resources :contacts
  devise_for :users

  root to: 'pages#home'
   get '/contact',    to: 'pages#contact'
   get '/careers',    to: 'pages#careers'
   # get '/stories',    to: 'pages#stories'
   get '/services',    to: 'pages#services'
   get '/clients',    to: 'pages#clients'
   get '/about',    to: 'pages#about'

   get '/privacy',    to: 'pages#privacy'
   get '/terms',    to: 'pages#terms'
   get '/cookies',    to: 'pages#cookies'

  delete "stories/:id", to: "stories#destroy"
  resources :stories
end
