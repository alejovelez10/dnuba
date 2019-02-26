class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :account_number
      t.string :client
      t.string :address
      t.string :city
      t.string :phone
      t.string :payment_conditions
      t.date :date_of_delivery
      t.string :client_code
      t.date :invoice_date
      t.date :service_date
      t.integer :quantity
      t.text :description
      t.float :unit_value
      t.float :total_value
      t.float :subtotal
      t.float :advance
      t.string :elaborate
      t.text :observations
      t.float :service_value
      t.float :invoice_value

      t.timestamps
    end
  end
end
