class CreateGeneralSpends < ActiveRecord::Migration[5.1]
  def change
    create_table :general_spends do |t|
      t.text :description
      t.integer :type_spend_id
      t.integer :user_id
      t.integer :value
      t.date :spend_date
      t.integer :cost_center_id
      t.string :file

      t.timestamps
    end
  end
end
