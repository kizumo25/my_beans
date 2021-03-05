Rails.application.routes.draw do

  get 'beans/index'

	root 'static_pages#home'

	get 'static_pages/home'
	get 'static_pages/about'
	get 'static_pages/contact'
end
