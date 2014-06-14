class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :code
      t.string :name, null: false
      t.timestamps
    end
  end
end
