class PointsController < ApplicationController

  def show
    @point = Point.find(params[:id])
    gon.coords = @point.coords
  end

  def favorite
    @point = Point.find_or_create_by(point_params)
    @point.update_favorites(current_user)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
    
  end

  private
  def point_params
    params.require(:point).permit(:lat, :long)
  end

end
