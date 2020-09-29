Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/songs" => "songs#index"
    post "/songs/new" => "songs#create"
    get "/songs/:id" => "songs#show"
    patch "songs/:id" => "songs#update"
  end
end
