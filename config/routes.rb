Rails.application.routes.draw do
	resources :pics
	root 'pictures#index'
end
