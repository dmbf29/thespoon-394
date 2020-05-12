Rails.application.routes.draw do
  # CRUD
  # create, read, update, destroy
  # verb, '/path', to: 'controller#action', as: :prefix

  # Create
  # a simple get request for a form page
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # where do we want to send the form?
  post '/restaurants', to: 'restaurants#create', as: :restaurants

  # Read all
  get '/restaurants', to: 'restaurants#index'
  # Read one
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant


  # Update
  # a simple get request for a form page
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch '/restaurants/:id', to: 'restaurants#update'

  # Destroy
  delete '/restaurants/:id', to: 'restaurants#destroy'
  # resources :restaurants
end


# localhost:300/flats
# <%= "restaurants", restaurants_path %>

# <%= "restaurants", restaurants_path, method: :post %>

# <%= "restaurant", restaurant_path(instance), method: :delete %>








