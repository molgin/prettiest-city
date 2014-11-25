class Point < ActiveRecord::Base
  belongs_to :city
  has_many :matchup_points
  has_many :matchups, through: :matchup_points
  has_many :counterpoints, ->(point) { where.not id: point.id }, through: :matchups, class_name: "Point", source: :points
end
