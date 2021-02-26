Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # query param
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
  end
end
