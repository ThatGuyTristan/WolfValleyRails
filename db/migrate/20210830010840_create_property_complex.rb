class CreatePropertyComplex < ActiveRecord::Migration[6.1]
  def change
    create_table :property_complexes do |t|
      t.string :name, :null => false
      t.text :description

      t.timestamps
    end
  end
end
