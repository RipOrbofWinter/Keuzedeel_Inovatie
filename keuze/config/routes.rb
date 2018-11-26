Rails.application.routes.draw do
  get 'users/new'
	root 'pages#Home'
	get '/contact', to: 'pages#contact' 
    get '/list', to: 'pages#list' 
    get '/profile', to: 'pages#profile'
    get '/signup',  to: 'users#new'
end
