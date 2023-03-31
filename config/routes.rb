Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  
  resources :dummy_models
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "categories#index"
  resources :categories do
    resources :tasks
  end
  root to: "categories#index"
end
