class CreateResidents < ActiveRecord::Migration[6.1]
  def change
    create_table :residents do |t|
      t.references :property_complex

      t.string :first_name
      t.string :last_name 
      t.string :middle_initial
      t.integer :status 
      t.date :dob
      
      t.timestamps
    end
  end
end
