json.extract! invoice, :id, :account_number, :client, :address, :city, :phone, :payment_conditions, :date_of_delivery, :client_code, :invoice_date, :service_date, :quantity, :description, :unit_value, :total_value, :subtotal, :advance, :elaborate, :observations, :service_value, :invoice_value, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
