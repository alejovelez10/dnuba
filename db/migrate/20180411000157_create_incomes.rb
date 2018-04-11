class CreateIncomes < ActiveRecord::Migration[5.1]
  def change
    create_table :incomes do |t|
      t.text :description
      t.string :type_income
      t.integer :user_id
      t.integer :value
      t.date :income_date
      t.integer :cost_center_id
      t.string :file

      t.timestamps
    end
  end
end
