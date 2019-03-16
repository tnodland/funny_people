class ComediansController < ApplicationController
  def index
    @comedians = Comedian.where(query_params)
    @average_age = Comedian.average_age
    @average_time = Special.average_time
    @cities = Comedian.unique_cities
  end

  def new
    @comedian = Comedian.new
  end

  private

  def query_params
    params.permit(:age)
  end
end
