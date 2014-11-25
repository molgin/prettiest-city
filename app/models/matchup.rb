class Matchup < ActiveRecord::Base
  has_many :matchup_points
  has_many :points, through: :matchup_points
  has_many :cities, through: :points
  validate :cities_must_be_different
  belongs_to :user

  def cities_must_be_different
    if winning_city == losing_city
      errors.add(:winning_city, "cities must be different")
    end
  end

  def build_points_from_coords(params)
    winning_point_obj = points.build(lat: params[:winning_coords][:lat], long: params[:winning_coords][:long], city_id: params[:winning_city])
    losing_point_obj = points.build(lat: params[:losing_coords][:lat], long: params[:losing_coords][:long], city_id: params[:losing_city])
    save
    self.winning_point = winning_point_obj.id
    self.losing_point = losing_point_obj.id
    save
  end

  def winning_point_obj
    points.where(id: winning_point).first
  end

  def losing_point_obj
    points.where(id: losing_point).first
  end

  def winning_city_obj
    winning_point_obj.city
  end

  def losing_city_obj
    losing_point_obj.city
  end

  def point_by_city(city)
    points.where(city_id: city.id).first
  end

  def won?(city)
    winning_city == city.id
  end

  def competitor(point)
    points.where.not(id: point.id).first
  end

end
