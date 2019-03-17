class HomeController < ApplicationController
  def home
    render file: "/app/views/home"
  end
end
