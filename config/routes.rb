Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # get "/cuisines" => "cuisines#index"
  # get "/cuisines/:id" => "cuisines#show", as: 'cuisine'

  resources :cuisines

  resources :recipes

  resources :users, except: [ :index ]


  # Session routes for login/logut
  get    "/login" => "session#new"     # login form
  post   "/login" => "session#create"  # form submits here to perform login and set session
  delete "/login" => "session#destroy" # logout (delete session)




  resources :favlists
  resources :reviews

 end
