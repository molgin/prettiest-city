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
    gon.center_coords = @city.center
    all_coords = @city.all_coords
    all_y = all_coords.map{ |point| point[0] }
    all_x = all_coords.map{ |point| point[1] }
    gon.min_x = all_x.min
    gon.max_x = all_x.max
    gon.min_y = all_y.min
    gon.max_y = all_y.max

    gon.winning_points = @city.winning_points.each_with_object({}).with_index do |(point, hsh), i|
      hsh[i] = {}
      hsh[i][:lat] = point.lat
      hsh[i][:long] = point.long
      hsh[i][:info_window] = render_to_string(partial: "/points/infowindow", locals: { point: point })
    end

    gon.losing_points = @city.losing_points.each_with_object({}).with_index do |(point, hsh), i|
      hsh[i] = {}
      hsh[i][:lat] = point.lat
      hsh[i][:long] = point.long
      hsh[i][:info_window] = render_to_string(partial: "/points/infowindow", locals: { point: point })
    end

  end

end
