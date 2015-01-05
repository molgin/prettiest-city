class User < ActiveRecord::Base
  has_many :matchups
  has_many :points, through: :matchups
  has_many :cities, ->(city) { group("cities.id") }, through: :points
  has_many :favorite_points
  has_many :favorites, through: :favorite_points, class_name: 'Point'
  


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

  def cities_by_times_voted_on
    cities.sort_by{ |city| city.total_by_user(self) }.reverse
  end

  def all_possible_city_combos
    cities.product(cities).reject{ |combo| combo[0] == combo[1] }.map{ |combo| combo.sort }.uniq
  end

  def city_combos
    all_possible_city_combos.reject { |city_1, city_2| combo_count(city_1, city_2) == 0 }
  end

  def combo_count(city_1, city_2)
    matchups.where(winning_city: city_1.id, losing_city: city_2.id).count + matchups.where(winning_city: city_2.id, losing_city: city_1.id).count
  end

  def city_combos_by_votes
    city_combos.sort_by { |city_1, city_2| combo_count(city_1, city_2) }.reverse
  end

  def top_city_combos(num)
    city_combos_by_votes[0..num-1]
  end

end
