Rails.application.routes.draw do

	root 'stacic_pages#home'
	get 'static_pages/home'
	get 'static_pages/about'
	get 'static_pages/contact'
end
