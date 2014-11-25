class CreateMatchups < ActiveRecord::Migration
  def change
    create_table :matchups do |t|
      t.integer :winning_point
      t.integer :losing_point
      t.integer :winning_city
      t.integer :losing_city
      t.integer :user_id

      t.timestamps
    end
  end
end
