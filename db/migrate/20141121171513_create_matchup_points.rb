class CreateMatchupPoints < ActiveRecord::Migration
  def change
    create_table :matchup_points do |t|
      t.integer :matchup_id
      t.integer :point_id

      t.timestamps
    end
  end
end
