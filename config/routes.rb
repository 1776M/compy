Compy::Application.routes.draw do

  match '/auth/:provider/callback' => 'authentications#create'
  devise_for :users, :path_prefix => 'd', :controllers => {:registrations => 'registrations', :sessions => 'users/sessions'}
  resources  :users

  resources :authentications
  resources :comps

  root :to => "pages#index"

end