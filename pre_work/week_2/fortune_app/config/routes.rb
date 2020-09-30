# Rails.application.routes.draw do
# EXAMPLE HTML ROUTE
# get "/photos" => "photos#index"

# EXAMPLE JSON ROUTE WITH API NAMESPACE
# namespace :api do
#   get "/photos" => "photos#index"
# end
# end
Rails.application.routes.draw do
  namespace :api do
    get "/sample_path" => "pages#sample_action"
  end

  namespace :api do
    get "/fortune_path" => "pages#return_fortune"
  end

  namespace :api do
    get "/random_number_path" => "pages#return_random_number"
  end

  namespace :api do
    get "/beer_path" => "pages#bottles_of_beer"
  end
end
