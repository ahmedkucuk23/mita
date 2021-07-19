Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   get '/contact',    to: 'pages#contact'
   get '/careers',    to: 'pages#careers'
   get '/stories',    to: 'pages#stories'
   get '/services',    to: 'pages#services'
   get '/clients',    to: 'pages#clients'

  resources :home, only: [:index, :new, :create]

end
