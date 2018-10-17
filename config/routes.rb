Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # get "/cuisines" => "cuisines#index"
  # get "/cuisines/:id" => "cuisines#show", as: 'cuisine'
  root to: "cuisins#index"


  resources :cuisines

  resources :recipes
  get "recipes/:id/favourite" => "recipes#favourite", as: "favourite_recipe"
  get "recipes/:id/unfavourite" => "recipes#unfavourite", as: "unfavourite_recipe"

  resources :users, except: [ :index ]
  # resources :users, only: [ :new, :create ]


  # Session routes for login/logut
  get    "/login" => "session#new"     # login form
  post   "/login" => "session#create"  # form submits here to perform login and set session
  delete "/login" => "session#destroy" # logout (delete session)




  resources :favlists
  resources :reviews

 end
