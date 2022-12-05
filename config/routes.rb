Rails.application.routes.draw do
  resources :dummy_models
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "categories#index"
  resources :categories

end
