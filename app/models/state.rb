class State < ActiveRecord::Base
  has_many :cities
  has_many :points, through: :cities
  has_many :matchups, through: :points
end
