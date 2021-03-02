Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/concept'

  root 'application#hello'
end
