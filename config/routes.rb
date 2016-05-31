Rails.application.routes.draw do
  get 'categories/index'

  get "log_out", to: "sessions#destroy", as: "log_out"
  get "log_in", to: "sessions#new", as: "log_in"
  get "sign_up", to: "admins#new", as: "sign_up"

  root :to => "categories#index"

  get  "/prayers/:id", to: "prayers#show", as: "prayer_path"

  post "/prayers/:prayer_id/comments/new", to: "comments#create"


  delete "prayers", to: "prayers#destroy"

  get "categories", to: "categories#index"

  resources :admins
  resources :sessions

  resources :categories do
    resources :prayers
  end

  resources :prayers do
    resources :comments, only: [:new, :create, :update]
  end

  resources :categories do
    resources :prayers
  end


end
