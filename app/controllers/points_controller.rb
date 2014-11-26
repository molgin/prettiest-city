class PointsController < ApplicationController

  def show
    @point = Point.find(params[:id])
    gon.coords = @point.coords
  end

end
