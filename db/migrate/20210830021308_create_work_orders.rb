class CreateWorkOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :work_orders do |t|
      t.references :property_complex
      t.references :residents

      t.string :location
      t.string :description

      t.boolean :completed

      t.timestamps
    end
  end
end
