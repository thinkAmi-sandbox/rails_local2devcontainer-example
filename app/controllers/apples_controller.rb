class ApplesController < ApplicationController
  def index
    @apples = Apple.all
  end
end
