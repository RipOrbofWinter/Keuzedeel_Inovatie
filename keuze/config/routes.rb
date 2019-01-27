Rails.application.routes.draw do
    
	root	'pages#Home'
	get 	'/contact', 	to: 'pages#contact' 
    get 	'/list', 		to: 'pages#list' 
    get 	'/profile', 	to: 'pages#profile'
    get 	'/signup',  	to: 'users#new'
    get     '/login',   	to: 'sessions#new'
    get     'sessions/new'
  	post    '/login',   	to: 'sessions#create'
  	delete  '/logout',  	to: 'sessions#destroy'	

    resources :users
end
