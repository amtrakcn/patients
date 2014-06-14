class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name, limit: 30
      t.string :middle_name, limit: 10
      t.string :last_name, limit: 30
      t.integer :medical_record_number
      t.date :date_of_birth
      t.string :gender
      t.text :status
      t.integer :location_id
      t.integer :view_count
      t.timestamps
    end
  end
end
