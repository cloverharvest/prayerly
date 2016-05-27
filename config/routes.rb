Rails.application.routes.draw do
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "session#new", :as => "log_in"
  get "sign_up" => "admins#new", :as => "sign_up"

  root :to => "home#index"

  resources :admins
  resources :sessions
end
