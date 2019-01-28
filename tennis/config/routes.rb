Rails.application.routes.draw do
  

  root	    'pages#Home'
  	get 	  '/newSpelers',	 to: 'spelers#new'
  	get 	  '/showSpelers',	 to: 'spelers#show'
  	get 	  '/editSpelers',  to: 'spelers#edit'
  	get    	'/newAan',		   to: 'aanmeldingen#new'
	  get 	  '/showAan',		   to: 'aanmeldingen#show'
	  get    	'/newSchool',	   to: 'school#new'
	  get  	  '/showSchool',	 to: 'school#show'
	  get   	'/editSchool',	 to: 'school#edit'
 	  get   	'/signup',  	   to: 'school#new'
    get     '/login',   	   to: 'sessions#new'
  	post    '/login',   	   to: 'sessions#create'
    post    '/newSpelers',   to: 'speler#create'
    post    '/newAan',       to: 'aanmeldingen#create'
  	post	  '/newSchool',	   to: 'school#create'
  	delete  '/logout',  	   to: 'sessions#destroy'

    resources :users
    resources :schools
    resources :aanmeldingen
    resources :spelers
end
