class ApplesController < ApplicationController
  def index
    session[:current_time] = Time.current.strftime("%Y:%m:%d %H:%M")

    @apples = Apple.all
    @current_time = session[:current_time]
  end
end
