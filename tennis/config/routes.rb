Rails.application.routes.draw do
  

  root	    'pages#Home'
  	get 	  '/newSpelers',	 to: 'spelers#new'
  	get 	  '/showSpelers',	 to: 'spelers#show'
  	get 	  '/editSpelers',  to: 'spelers#edit'
  	get    	'/newAan',		   to: 'aanmeldingens#new'
	  get 	  '/showAan',		   to: 'aanmeldingens#show'
	  get    	'/newSchool',	   to: 'schools#new'
	  get  	  '/showSchool',	 to: 'schools#show'
	  get   	'/editSchool',	 to: 'schools#edit'
    get     '/signup',       to: 'schools#new'
 	  get   	'/showtournooi', to: 'tournooistarts#show'
    get     '/login',   	   to: 'sessions#new'
  	post    '/login',   	   to: 'sessions#create'
    post    '/newSpelers',   to: 'spelers#create'
    post    '/newAan',       to: 'aanmeldingens#create'
  	post	  '/newSchool',	   to: 'school#create'
  	delete  '/logout',  	   to: 'sessions#destroy'

    post     '/start',        to: 'tournooistarts#start', as: "start"
    resources :users
    resources :schools
    resources :aanmeldingens
    resources :tournooistarts
    resources :spelers
end
