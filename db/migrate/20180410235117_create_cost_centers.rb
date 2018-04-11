class CreateCostCenters < ActiveRecord::Migration[5.1]
  def change
    create_table :cost_centers do |t|
      t.string :name
      t.text :description
      t.string :code
      t.integer :customer_id
      t.integer :budget
      t.integer :user_id

      t.timestamps
    end
  end
end
