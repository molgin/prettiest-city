class MatchupsController < ApplicationController

  def index
    if params[:city_1] && params[:city_2]
      redirect_to "/matchups/#{params[:city_1]}/#{params[:city_2]}"
    else
      @city_1 = City.find_by(name: "New York")
      @city_2 = City.find_by(name: "San Francisco")
    end
  end

  def create
    # {"utf8"=>"✓", "authenticity_token"=>"QKWTwgGTItgUXC/6+I1OWhc5gO08OXlxEyfEAbdvZ4U=", "matchup"=>{"winning_city"=>"1", "losing_city"=>"2", "winning_coords"=>{"lat"=>"40.633057", "long"=>"-74.02691299999998"}, "losing_coords"=>{"lat"=>"37.749569", "long"=>"-122.50193999999999"}}, "commit"=>"Vote", "action"=>"create", "controller"=>"matchups"}
    @city_1 = City.find(matchup_params[:city_1])
    @city_2 = City.find(matchup_params[:city_2])
    @matchup = Matchup.create(winning_city: matchup_params[:winning_city], losing_city: matchup_params[:losing_city])
    @matchup.build_points_from_coords(matchup_params)
    respond_to do |format|
      format.html { redirect_to "/matchups/#{@city_1.id}/#{@city_2.id}" }
      format.js {}
    end
  end

  
  def show
    @city_1 = City.find(params[:first_id])
    @city_2 = City.find(params[:second_id])
    if @city_2 != @city_1
      render :index
    else
      redirect_to root_path
    end
  end

  def random
    ids = (1..City.count).to_a
    city_1_id = ids.sample
    city_2_id = (ids - [city_1_id]).sample
    redirect_to "/matchups/#{city_1_id}/#{city_2_id}"
  end


  private
  def matchup_params
    params.require(:matchup).permit(:city_1, :city_2, :winning_city, :losing_city, :winning_coords => [:lat, :long], :losing_coords => [:lat, :long])
  end

end
