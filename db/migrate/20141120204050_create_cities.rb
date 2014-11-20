class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.json :multipolygon_json
      t.float :min_x
      t.float :max_x
      t.float :min_y
      t.float :max_y

      t.timestamps
    end
  end
end
