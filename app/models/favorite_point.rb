class FavoritePoint < ActiveRecord::Base
  belongs_to :user
  belongs_to :point
  validates_uniqueness_of :point_id, scope: :user_id
end
