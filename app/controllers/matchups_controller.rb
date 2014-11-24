class MatchupsController < ApplicationController

  def index
    @city_1 = City.find_by(name: "New York City")
    @city_2 = City.find_by(name: "San Francisco")
    # @matchup = Matchup.new
    # @matchup.build_points_from_cities(@city_1, @city_2)
  end

  def create
    # {"utf8"=>"✓", "authenticity_token"=>"QKWTwgGTItgUXC/6+I1OWhc5gO08OXlxEyfEAbdvZ4U=", "matchup"=>{"winning_city"=>"1", "losing_city"=>"2", "winning_coords"=>{"lat"=>"40.633057", "long"=>"-74.02691299999998"}, "losing_coords"=>{"lat"=>"37.749569", "long"=>"-122.50193999999999"}}, "commit"=>"Vote", "action"=>"create", "controller"=>"matchups"}
    @matchup = Matchup.new
    @matchup.winning_city = matchup_params[:winning_city]
    @matchup.losing_city = matchup_params[:losing_city]
    winning_point = @matchup.points.build(lat: matchup_params[:winning_coords][:lat], long: matchup_params[:winning_coords][:long], city_id: matchup_params[:winning_city])
    losing_point = @matchup.points.build(lat: matchup_params[:losing_coords][:lat], long: matchup_params[:losing_coords][:long], city_id: matchup_params[:losing_city])
    @matchup.save
    @matchup.winning_point = winning_point.id
    @matchup.losing_point = losing_point.id
    @matchup.save
    redirect_to root_path
  end


  private
  def matchup_params
    params.require(:matchup).permit(:winning_city, :losing_city, :winning_coords => [:lat, :long], :losing_coords => [:lat, :long])
  end

end
