Rails.application.routes.draw do
  root to: 'films#index'
  get 'films/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/films", to: "films#index"
end
