Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :authors
      resources :genres do
        resources :books
      end
      resources :books
      resources :subscribers do
        resources :subscriptions
      end
    end
  end

  # namespace :api do
  #   namespace :admin do
  #     resources :authors do
  #       resources :books do
  #         resources :genres
  #     end
  #     resources :subscribers do
  #       resources :subscriptions
  #     end
  #   end
  # end

  resources :subscriptions
  resources :subscribers
  resources :authors
  resources :books
  resources :genres
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
