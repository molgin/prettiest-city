class MatchupPoint < ActiveRecord::Base
  belongs_to :point
  belongs_to :matchup
end
