Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/crafts" => "crafts#index"
  post "/crafts" => "crafts#create"
  get "/crafts/:id" => "crafts#show"
  patch "/crafts/:id" => "crafts#update"
  delete "/crafts/:id" => "crafts#destroy"


  get "/favorites" => "favorite_crafts#index"
  post "/favorites" => "favorite_crafts#create"
  get "/favorites/:id" => "favorite_crafts#show"
  delete "/favorites/:id" => "favorite_crafts#destroy"


    get "/comments" => "craft_comments#index"
    post "/comments" => "craft_comments#create"
    get "/comments/:id" => "craft_comments#show"
    delete "/comments/:id" => "craft_comments#destroy"

  # built in ruby method to generate routes 
  # resources :crafts do
  #   resources :comments
  #   end
  # end 

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
