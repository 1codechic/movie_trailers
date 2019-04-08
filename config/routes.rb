Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/movies' => 'movies#index'
    post '/movies' => 'movies#create'
    get '/movies/:id' => 'movies#show'
  end
end
