Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # verb path (from web request) => "name of controller # name of mether in controller"
    get "/hello_path" => "example_pages#hello_method"
  end
  namespace :api do
    get "/silly_path" => "example_pages#silly_method"
  end
  namespace :api do
    get "/bob_path" => "example_pages#bob_method"
  end
  namespace :api do
    get "/multiply_path" => "example_pages#multiply_method"
  end
end
