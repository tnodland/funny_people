class ComediansController < ApplicationController
  def index
    @comedians = Comedian.all
    @cities = Comedian.unique_cities
  end
end
