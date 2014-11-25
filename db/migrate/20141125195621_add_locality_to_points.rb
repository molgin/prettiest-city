class AddLocalityToPoints < ActiveRecord::Migration
  def change
    add_column :points, :locality, :string
  end
end
