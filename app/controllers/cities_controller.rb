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
    gon.winning_point_coords = @city.winning_point_coords
    gon.losing_point_coords = @city.losing_point_coords
    gon.center_coords = @city.center
  end

end
