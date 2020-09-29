Rails.application.routes.draw do
  get 'api/Articles'
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/articles" => "articles#index"
  end
end
