Rails.application.routes.draw do
  get 'spelers/new'
  root	'pages#Home'
 	get 	'/signup',  to: 'users#new'
    get     '/login',   to: 'sessions#new'
  	post    '/login',   to: 'sessions#create'
  	delete  '/logout',  to: 'sessions#destroy'

    resources :users
end
