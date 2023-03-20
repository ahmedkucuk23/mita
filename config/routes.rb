Rails.application.routes.draw do
  # resources :contacts

  devise_for :users

  root to: 'pages#home'
   get '/contacts',    to: 'contacts#new'
   post '/contacts', to: 'contacts#create'



   # get '/stories',    to: 'pages#stories'
   get '/clients',    to: 'pages#clients'
   get '/about',      to: 'pages#about'
   get '/services',    to: 'pages#services'
   get '/checklist',              to: 'pages#checklist'

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
   get '/thankyou',        to: 'pages#thankyou'

  delete "stories/:id",     to: "stories#destroy"
  resources :stories

  # delete "blogs/:id",     to: "blogs#destroy"
  # resources :blogs
end
