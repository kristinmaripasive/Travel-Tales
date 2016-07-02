class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :photo_url
      t.boolean :has_been
      
      t.timestamps
    end
  end
end
