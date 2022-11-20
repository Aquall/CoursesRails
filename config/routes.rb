Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :authors
      resources :genres
      resources :books
      resources :subscribers do
        resources :subscriptions
      end
    end
  end

  namespace :api do
    namespace :admin do
      resources :authors 
      resources :genres
      resources :books
      resources :subscribers do
        resources :subscriptions
      end
      resources :subscriptions
    end
  end

  resources :subscriptions
  resources :subscribers
  resources :authors
  resources :books
  resources :genres
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
