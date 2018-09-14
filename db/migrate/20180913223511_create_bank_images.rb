class CreateBankImages < ActiveRecord::Migration[5.1]
  def change
    create_table :bank_images do |t|
      t.string :title
      t.text :description
      t.string :achivo
      t.integer :user_id

      t.timestamps
    end
  end
end
