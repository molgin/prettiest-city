class Matchup < ActiveRecord::Base
  has_many :matchup_points
  has_many :points, through: :matchup_points
  has_many :cities, through: :points
  validate :cities_must_be_different

  def cities_must_be_different
    if winning_city == losing_city
      errors.add(:winning_city, "cities must be different")
    end
  end

end
