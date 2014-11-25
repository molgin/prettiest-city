class CitiesController < ApplicationController
  def index

  end

  def random
    @city = City.find(params[:id])
    long, lat = @city.random_coords
    lat_long = {lat: lat, long: long}
    respond_to do |format|
      format.json { render json: lat_long }
    end
  end

  def show
    @city = City.find(params[:id])
    @winning_coords = @city.get_winning_point_coords
  end

end
