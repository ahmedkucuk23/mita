Rails.application.routes.draw do
  # resources :contacts
  devise_for :users

  root to: 'pages#home'
   get '/contacts',    to: 'contacts#new'
   post '/contacts', to: 'contacts#create'


   get '/careers',    to: 'pages#careers'
   # get '/stories',    to: 'pages#stories'
   get '/services',   to: 'pages#services'
   get '/clients',    to: 'pages#clients'
   get '/about',      to: 'pages#about'

   get '/privacy',          to: 'pages#privacy'
   get '/terms',            to: 'pages#terms'
   get '/cookies',          to: 'pages#cookies'

   get '/ecommerce',        to: 'pages#ecommerce'
   get '/webdesign',        to: 'pages#webdesign'
   get '/graphic-design',   to: 'pages#graphicdesign'
   get '/social-media',     to: 'pages#socialmedia'
   get '/ppc-marketing',    to: 'pages#ppcmarketing'
   get '/content-creation', to: 'pages#contentcreation'
   get '/seo',              to: 'pages#seo'
   get '/consulting',       to: 'pages#consulting'

  delete "stories/:id",     to: "stories#destroy"
  resources :stories
end
