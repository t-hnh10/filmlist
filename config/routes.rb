Rails.application.routes.draw do
  get 'films/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/films", to: "films#index"
end
