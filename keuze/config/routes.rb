Rails.application.routes.draw do
	root 'pages#Home'
	get '/contact', to: 'pages#contact' 
    get '/list', to: 'pages#list' 
    get '/profile', to: 'pages#profile'
end
