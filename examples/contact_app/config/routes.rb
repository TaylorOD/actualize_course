Rails.application.routes.draw do
  namespace :api do
    get "/contact_path" => "contacts#contact"
  end
  namespace :api do
    get "/all_contact_path" => "contacts#all_contact"
  end
end
