Rails.application.routes.draw do
  get "log_out", to: "sessions#destroy", :as => "log_out"
  get "log_in", to: "sessions#new", :as => "log_in"
  get "sign_up", to: "admins#new", :as => "sign_up"

  root :to => "home#index"

  resources :admins
  resources :sessions

  get "/prayers", to: "prayers#index"
    
end
