class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :order
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
