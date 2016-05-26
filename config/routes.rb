Rails.application.routes.draw do
  get 'sessions/new'

  get 'admins/new'

  root "home#index"
  
  get 'home/index'
end
