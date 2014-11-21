class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.float :lat
      t.float :long
      t.integer :city_id

      t.timestamps
    end
  end
end
