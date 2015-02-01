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
    @random = params["matchup"]["random"].to_i
    if @random == 1
      @city_1, @city_2 = City.all.sample(2)
    else
      @city_1 = City.find(matchup_params[:city_1])
      @city_2 = City.find(matchup_params[:city_2])
    end
    @matchup = Matchup.create(winning_city: matchup_params[:winning_city], losing_city: matchup_params[:losing_city])
    if current_user
      @matchup.user_id = current_user[:id]
    else
      session[:matchup_ids] ||= []
      session[:matchup_ids] << @matchup.id
    end
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
    city_1_id, city_2_id = City.pluck(:id).sample(2)
    redirect_to "/matchups/#{city_1_id}/#{city_2_id}"
  end

  def true_random
    @city_1, @city_2 = City.all.sample(2)
    render :random
  end


  private
  def matchup_params
    params.require(:matchup).permit(:city_1, :city_2, :winning_city, :losing_city, :winning_coords => [:lat, :long], :losing_coords => [:lat, :long])
  end

end
