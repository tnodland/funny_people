class ComediansController < ApplicationController
  def index
    @comedians = Comedian.all
    @average_age = Comedian.average_age
    @average_time = Special.average_time
    @cities = Comedian.unique_cities
  end
end
