Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :posts do
    member do
      put "like", to: "posts#like"
      put "dislike", to: "posts#dislike"
    end
    resources :comments
 end
  root "posts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
