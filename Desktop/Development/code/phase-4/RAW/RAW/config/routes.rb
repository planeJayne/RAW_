Rails.application.routes.draw do
  resources :renters, only: [:index, :show]
  resources :rental_cars, only: [:index, :show, :create]
  get '/hello', to: 'application#hello_world'
end
