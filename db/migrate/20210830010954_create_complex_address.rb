class CreateComplexAddress < ActiveRecord::Migration[6.1]
  def change
    create_table :complex_addresses do |t|
      t.string  :street
      t.string  :street_ext
      t.string  :city
      t.string  :state
      t.string  :zip

      t.references :property_complex
    end
  end
end
