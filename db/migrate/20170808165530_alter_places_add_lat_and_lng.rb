class AlterPlacesAddLatAndLng < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :latitude, :float
    add_column :places, :longtitude, :float
  end
end
