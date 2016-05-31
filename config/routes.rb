Rails.application.routes.draw do
  get 'categories/index'

  get "log_out", to: "sessions#destroy", as: "log_out"
  get "log_in", to: "sessions#new", as: "log_in"
  get "sign_up", to: "admins#new", as: "sign_up"

  root :to => "categories#index"

  resources :admins
  resources :sessions

  resources :categories do
    resources :prayers
  end

  resources :prayers do
    resources :comments
  end

  post "/prayers/:prayer_id/comments/new", to: "comments#create"
  get "/prayers/:prayer_id/comments/:id(.:format)", to: "comments#show", as: "prayer_comment_path"


  resources :categories do
    resources :prayers
  end

  delete "prayers", to: "prayers#destroy"

  get "categories", to: "categories#index"

end
