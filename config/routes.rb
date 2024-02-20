Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get("/movies", {:controller => "movies", :action => "index"})

  get("/movies/:an_id", {:controller => "movies", :action => "show"})
end
