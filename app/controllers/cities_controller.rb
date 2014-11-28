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
    all_coords = gon.winning_point_coords + gon.losing_point_coords
    all_y = all_coords.map { |point| point[0] }
    all_x = all_coords.map { |point| point[1] }
    gon.min_x = all_x.min
    gon.max_x = all_x.max
    gon.min_y = all_y.min
    gon.max_y = all_y.max
    # gon.min_x = @city.min_x
    # gon.max_x = @city.max_x
    # gon.min_y = @city.min_y
    # gon.max_y = @city.max_y
  end

end
