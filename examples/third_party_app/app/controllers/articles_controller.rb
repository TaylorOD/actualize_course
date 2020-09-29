class :ArticlesController < ApplicationController
  def index
    url = HTTP.get("http://newsapi.org/v2/everything?" \
    "q=Apple&" \
    "sortBy=popularity&" \
    "apiKey=cee8f761995044ad943529219f6fa7e6")
    data = url.parse

    # second web request

    render json: {}
  end
end
