Rails.application.routes.draw do
  resources :rental_cars
  get '/hello', to: 'application#hello_world'
end
