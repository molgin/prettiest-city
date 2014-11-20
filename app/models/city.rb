class City < ActiveRecord::Base
  attr_accessor :multipolygon

  def random_point
    make_multipolygon
    loop do
      point = GeoRuby::SimpleFeatures::Point.new
      point.x, point.y = random_point_in_box
      return point.to_coordinates if multipolygon.contains_point? point
    end
  end

  def random_point_in_box
    [rand(min_x..max_y), rand(min_y..max_y)]
  end

  def make_multipolygon
    @multipolygon = GeoRuby::SimpleFeatures::MultiPolygon.from_coordinates(multipolygon_json["coordinates"])
  end

end
