class MatchupsController < ApplicationController

  def index
    @city_1 = City.find_by(name: "New York City")
    @city_2 = City.find_by(name: "San Francisco")
    @matchup = Matchup.new
    # @matchup.build_points_from_cities(@city_1, @city_2)
  end



end
