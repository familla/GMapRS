class CreateMapPlaces < ActiveRecord::Migration
  def change
    create_table :map_places do |t|
      t.string :place
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
