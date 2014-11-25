class City < ActiveRecord::Base
  has_many :points
  has_many :matchups, through: :points

  attr_accessor :multipolygon

  def random_point
    long, lat = random_coords
    Point.create(lat: lat, long: long, city_id: self.id)
  end

  def random_coords
    make_multipolygon
    loop do
      point = GeoRuby::SimpleFeatures::Point.new
      point.x, point.y = random_point_in_box
      puts point.to_coordinates
      puts multipolygon.contains_point? point
      return point.to_coordinates if multipolygon.contains_point? point
    end
  end

  def random_point_in_box
    [rand(min_x..max_x), rand(min_y..max_y)]
  end

  def make_multipolygon
    @multipolygon = GeoRuby::SimpleFeatures::MultiPolygon.from_coordinates(multipolygon_json["coordinates"])
  end

  def self.create_by_city_and_state(args)
    state_folder = Dir[Rails.root + "lib/assets/shapefiles/*"].find do |filename|
      filename.downcase.include? args[:state].downcase
    end
    state_shapefile = Dir[state_folder + "/*"].find { |filename| filename.end_with? "shp" }

    GeoRuby::Shp4r::ShpFile.open(state_shapefile) do |shp|
      city = shp.find { |city| city.data.name.downcase == args[:city].downcase}
      return "City not found" if !city
      new_city = City.create(name: city.data.name)
      new_city.multipolygon_json = city.geometry.to_json
      xes = city.geometry.bounding_box.map { |point| point.x }
      ys = city.geometry.bounding_box.map { |point| point.y }
      new_city.min_x, new_city.max_x = xes.sort
      new_city.min_y, new_city.max_y = ys.sort
      new_city.state = State.find_by(name: args[:state])
      new_city.save
    end
    last
  end

  def winning_matchups
    matchups.where(winning_city: id)
  end

  def losing_matchups
    matchups.where(losing_city: id)
  end

  def wins
    winning_matchups.count
  end

  def losses
    losing_matchups.count
  end

  def total
    matchups.count
  end

  def win_ratio
    wins / total.to_f
  end

  def win_percentage
    (win_ratio * 100).round(1)
  end

  def win_percentage_display
    "#{win_percentage}%"
  end

end
