Rails.application.routes.draw do
  root "posts#index"
  
  devise_for :users, :controllers => {
    registrations: 'registrations'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:new, :create, :index]
  # Defines the root path route ("/")
  # root "articles#index"
end
