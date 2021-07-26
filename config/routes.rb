Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
   get '/contact',    to: 'pages#contact'
   get '/careers',    to: 'pages#careers'
   # get '/stories',    to: 'pages#stories'
   get '/services',    to: 'pages#services'
   get '/clients',    to: 'pages#clients'
   get '/about',    to: 'pages#about'

  resources :stories
end
