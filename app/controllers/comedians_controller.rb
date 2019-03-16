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

  def show

  end

  def create
    comedian = Comedian.create(comedian_params)
    if comedian.save
      redirect_to(comedian_path(comedian))
    else
      redirect_to new_comedian_path
    end
  end

  private

  def query_params
    params.permit(:age)
  end

  def comedian_params
    params.require(:comedian).permit(:name, :city, :age)
  end
end
