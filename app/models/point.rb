class Point < ActiveRecord::Base
  belongs_to :city
  has_many :matchup_points
  has_many :matchups, through: :matchup_points
  has_many :counterpoints, ->(point) { where.not id: point.id }, through: :matchups, class_name: "Point", source: :points

  reverse_geocoded_by :lat, :long do |obj,results|
    if geo = results.first
      obj.street_address = geo.street_address
      obj.address = geo.address
      obj.neighborhood = geo.neighborhood
      obj.zipcode = geo.postal_code
      obj.locality = geo.city
    end
  end
  before_save :reverse_geocode

  def coords
    [lat, long]
  end

  def won?
    matchups.last.winning_point == id
  end

  def competitor
    competitors.last
  end

  def image_link(width, height=width)
    "https://maps.googleapis.com/maps/api/streetview?size=#{width}x#{height}&location=#{lat},#{long}&fov=90&heading=34&pitch=10"
  end

end
