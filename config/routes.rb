Compy::Application.routes.draw do

  match '/auth/:provider/callback' => 'authentications#create'
  devise_for :users
  resources  :users

  resources :authentications
  resources :comps

  root :to => "pages#index"

end