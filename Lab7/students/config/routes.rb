Rails.application.routes.draw do
  resources :students
  #get 'home/index'
  root 'students#index'

  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
