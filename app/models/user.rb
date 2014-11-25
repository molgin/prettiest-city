class User < ActiveRecord::Base

  has_many :matchups
  


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

end
