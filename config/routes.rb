Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
	
	get "war", to: "war#index"
	get "countries", to: "countries#index"
	get "countries/:id", to: "countries#show"

	get "generals", to: "generals#index"
	get "generals/:id", to: "generals#show"


end
