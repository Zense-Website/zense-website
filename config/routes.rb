Rails.application.routes.draw do

	resources :users, :projects	
	root 'abouts#index'  	
end
