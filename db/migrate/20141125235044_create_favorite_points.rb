class CreateFavoritePoints < ActiveRecord::Migration
  def change
    create_table :favorite_points do |t|
      t.integer :user_id
      t.integer :point_id

      t.timestamps
    end
  end
end
