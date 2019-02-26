class AddNitToInvoice < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :nit, :string
  end
end
