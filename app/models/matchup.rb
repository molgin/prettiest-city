class Matchup < ActiveRecord::Base
  has_many :matchup_points
  has_many :points, through: :matchup_points
  has_many :cities, through: :points

  # def build_points_from_cities(city_1, city_2)
  #   points << city_1.random_point
  #   points << city_2.random_point
  #   save
  # end

end
