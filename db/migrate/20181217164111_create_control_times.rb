class CreateControlTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :control_times do |t|
      t.integer :user_id
      t.integer :hours
      t.text :observations
      t.date :registration_date

      t.timestamps
    end
  end
end
