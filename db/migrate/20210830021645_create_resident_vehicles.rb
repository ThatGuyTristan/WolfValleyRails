class CreateResidentVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :resident_vehicles do |t|
      t.references :property_complex
      t.references :residents

      t.string :plate_text
      t.string :plate_state
      t.string :color 
      t.string :make
      t.string :model 
    end
  end
end
