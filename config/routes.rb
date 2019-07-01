Rails.application.routes.draw do
  root to: 'films#index'
  get 'films/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "films", to: "films#index"
  get "films/new", to: "films#new", as: "new_film"
  post "films", to: "films#create"
end
