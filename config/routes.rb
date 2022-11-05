Rails.application.routes.draw do
  resources :subscriptions
  resources :subscribers
  resources :authors_books
  resources :authors
  resources :book_genres
  resources :books
  resources :genres
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
