class CreateTypeSpends < ActiveRecord::Migration[5.1]
  def change
    create_table :type_spends do |t|
      t.string :name
      t.text :description
      t.string :code
      t.integer :user_id

      t.timestamps
    end
  end
end
