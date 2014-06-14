class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name, limit: 30, null: false
      t.string :middle_name, limit: 10
      t.string :last_name, limit: 30, null: false
      t.date :date_of_birth
      t.string :gender
      t.string :status, null: false
      t.integer :location_id, null: false
      t.integer :view_count, default: 0
      t.boolean :deleted, default: 0
      t.timestamps
    end
  end
end
