class ApplesController < ApplicationController
  def index
    @apples = Apple.all

    session[:current_time] = Time.current.strftime("%Y:%m:%d %H:%M")
    @current_time = session[:current_time]

    url = URI("#{ENV['API_URL']}/items")
    response = Net::HTTP.get(url)
    parsed_response = JSON.parse(response)
    @apples_with_price = parsed_response.map do |res|
      name = Apple.find_by(id: res["id"])&.name
      {
        name: name,
        price: res["price"]
      }
    end

    @env_value = ENV["ENV_VALUE"]

    @message = PrivateHelloGem.hello
  end
end
