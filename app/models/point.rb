class Point < ActiveRecord::Base
  belongs_to :city
  has_many :matchup_points
  has_many :matchups, through: :matchup_points
end
