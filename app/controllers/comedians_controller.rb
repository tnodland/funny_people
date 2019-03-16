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
    @comedian = Comedian.find(params[:id])
    if params[:joke]
      @joke = Joke.find(params[:joke])
    end
  end

  def create
    comedian = Comedian.create(comedian_params)
    if comedian.save
      redirect_to(comedian_path(comedian))
    else
      redirect_to new_comedian_path
    end
  end

  def joke
    @comedian = Comedian.find(params[:id])
    @joke = @comedian.jokes.sample
    redirect_to comedian_show_joke_path(@comedian, @joke)
  end

  private

  def query_params
    params.permit(:age)
  end

  def comedian_params
    params.require(:comedian).permit(:name, :city, :age)
  end
end
