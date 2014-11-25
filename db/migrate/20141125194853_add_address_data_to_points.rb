class AddAddressDataToPoints < ActiveRecord::Migration
  def change
    add_column :points, :street_address, :string
    add_column :points, :zipcode, :string
    add_column :points, :neighborhood, :string
  end
end
