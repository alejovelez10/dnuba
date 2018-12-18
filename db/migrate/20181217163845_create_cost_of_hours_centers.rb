class CreateCostOfHoursCenters < ActiveRecord::Migration[5.1]
  def change
    create_table :cost_of_hours_centers do |t|
      t.integer :cost_center_id
      t.integer :user_id
      t.integer :hours
      t.date :date

      t.timestamps
    end
  end
end
