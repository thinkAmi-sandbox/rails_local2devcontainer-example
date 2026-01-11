class ApplesController < ApplicationController
  def index
    session[:current_time] = Time.current.strftime("%Y:%m:%d %H:%M")
    @current_time = session[:current_time]

    @apples = Apple.all

    url = URI("http://localhost:3001/items")
    response = Net::HTTP.get(url)
    parsed_response = JSON.parse(response)

    @apples_with_price = parsed_response.map do |res|
      name = Apple.find_by(id: res["id"])&.name

      {
        name: name,
        price: res["price"]
      }
    end
  end
end
