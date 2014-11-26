class User < ActiveRecord::Base
  has_many :matchups
  has_many :points, through: :matchups
  has_many :cities, ->(city) { group("cities.id") }, through: :points
  


  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end

  def get_winning_cities
    matchups.collect do |m|
      m.winning_city
    end
  end

  # def get_city_standings
  #   get_winning_cities.uniq.each do |city|
  #     puts "#{(City.find(city)).name}\t#{get_winning_cities.count(city)}"
  #   end
  # end

  def cities_by_win_ratio
    cities.sort_by{ |city| city.win_ratio_by_user(self) }.reverse
  end

  def has_matchups?
    matchups.count > 0
  end

  def recent_matchups(num)
    matchups.order(created_at: :desc).limit(num)
  end


end
