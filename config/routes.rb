Rails.application.routes.draw do
  devise_for :users
  root to:  "top#index"
  resources :blogs
  get "/contacts/new" => "contacts#new"
  post "/contacts/new" => "contacts#new"
  post "/contacts/confirmation" => "contacts#confirmation"
  post "/contacts" => "contacts#create"
end
