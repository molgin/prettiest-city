class City < ActiveRecord::Base
  has_many :points
  has_many :matchups, through: :points
  has_many :competitors, ->(city) { where.not(id: city.id).group("cities.id") }, through: :matchups, class_name: "City", source: :cities
  belongs_to :state
  before_save :set_slug
  validates_presence_of :name

  attr_accessor :multipolygon

  def set_slug
    self.slug = name.downcase.split.join("-")
  end

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
      city = shp.find { |city| city.data.name.downcase == args[:city].downcase || ( city.data.name.downcase.end_with?("(balance)") && city.data.name.downcase.start_with?(args[:city].downcase) ) }
      return "City not found" if !city
      if city.data.name.downcase.end_with? "(balance)"
        new_city = City.create(name: args[:city])
      else
        new_city = City.create(name: city.data.name)
      end
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

  def winning_matchups_against(competitor)
    matchups.where(losing_city: competitor.id).where(winning_city: id)
  end

  def wins_against(competitor)
    winning_matchups_against(competitor).count
  end

  def losing_matchups_against(competitor)
    matchups.where(winning_city: competitor.id).where(losing_city: id)
  end

  def losses_against(competitor)
    losing_matchups_against(competitor).count
  end

  def total_against(competitor)
    wins_against(competitor) + losses_against(competitor)
  end

  def win_ratio_against(competitor)
    wins_against(competitor) / total_against(competitor).to_f
  end

  def win_percentage_against(competitor)
    (win_ratio_against(competitor) * 100).round(1)
  end

  def win_percentage_display_against(competitor)
    "#{win_percentage_against(competitor)}%"
  end

  def matchups_by_user(user)
    matchups.where(user_id: user.id)
  end

  def winning_matchups_by_user(user)
    matchups_by_user(user).where(winning_city: id)
  end

  def losing_matchups_by_user(user)
    matchups_by_user(user).where(losing_city: id)
  end

  def wins_by_user(user)
    winning_matchups_by_user(user).count
  end

  def losses_by_user(user)
    losing_matchups_by_user(user).count
  end

  def total_by_user(user)
    matchups_by_user(user).count
  end

  def win_ratio_by_user(user)
    wins_by_user(user) / total_by_user(user).to_f
  end

  def win_percentage_by_user(user)
    (win_ratio_by_user(user) * 100).round(1)
  end

  def win_percentage_display_by_user(user)
    "#{win_percentage_by_user(user)}%"
  end



  def competitors_by_win_ratio
    competitors.sort_by{ |competitor| win_ratio_against(competitor) }.reverse
  end

  def winning_point_ids
    winning_matchups.pluck(:winning_point)
  end

  def winning_points
    points.where(id: winning_point_ids)
  end

  def winning_point_coords
    winning_point_ids.map{ |point| Point.find(point).coords }
  end

  def losing_point_ids
    losing_matchups.pluck(:losing_point)
  end

  def losing_points
    points.where(id: losing_point_ids)
  end

  def competing_point_ids
    winning_point_ids + losing_point_ids
  end

  def competing_points
    points.where(id: competing_point_ids)
  end

  def losing_point_coords
    losing_point_ids.map{ |point| Point.find(point).coords }
  end

  def all_coords
    competing_points.map{ |point| point.coords }
  end

  def has_matchups?
    matchups.any?
  end

  def recent_matchups(num)
    matchups.order(created_at: :desc).limit(num)
  end

  def recent_points(num)
    competing_points.order(updated_at: :desc).limit(num)
  end

  def full_name
    "#{name}, #{state.abbr}"
  end

  def center
    [((min_y + max_y) / 2), ((min_x + max_x) / 2)]
  end

  def ranking
    City.sort_by_win_ratio.each_with_index do |city, i|
      return i + 1 if city == self
    end
  end

  def user_ranking(user)
    user.cities_by_win_ratio.each_with_index do |city, i|
      return i + 1 if city == self
    end
    nil
  end






  def self.ranked
    joins(:matchups).group("cities.id")
  end

  def self.sort_by_win_ratio
    ranked.sort_by{ |city| city.win_ratio }.reverse
  end


end
