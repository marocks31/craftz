Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/crafts" => "crafts#index"
  post "/crafts" => "crafts#create"
  get "/crafts/:id" => "crafts#show"
  patch "/crafts/:id" => "crafts#update"
  delete "/crafts/:id" => "crafts#destroy"

  get "/favorites" => "favorites#index"
  post "/favorites" => "favorites#create"

  # resources :crafts do
  #   resources :favorites
  #   end
  # end 

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
