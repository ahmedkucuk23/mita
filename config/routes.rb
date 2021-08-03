Rails.application.routes.draw do
  devise_for :users

  resources :contacts, only: [:new, :create]

  root to: 'pages#home'
   get '/contact',    to: 'pages#contact'
   get '/careers',    to: 'pages#careers'
   # get '/stories',    to: 'pages#stories'
   get '/services',    to: 'pages#services'
   get '/clients',    to: 'pages#clients'
   get '/about',    to: 'pages#about'

  post "send_contact" => "pages#send_contact"

  resources :stories
end
