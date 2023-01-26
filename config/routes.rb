Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    
  root 'flight#index'


  resources :airport
  resources :flight
  resources :passengers
  resources :booking

  # Defines the root path route ("/")
  # root "articles#index"

end
