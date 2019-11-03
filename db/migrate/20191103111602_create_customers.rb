class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.text :phone
      t.text :description
      t.boolean :black

      t.timestamps
    end
  end
end
