require 'test_helper'

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_url
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post invoices_url, params: { invoice: { account_number: @invoice.account_number, address: @invoice.address, advance: @invoice.advance, city: @invoice.city, client: @invoice.client, client_code: @invoice.client_code, date_of_delivery: @invoice.date_of_delivery, description: @invoice.description, elaborate: @invoice.elaborate, invoice_date: @invoice.invoice_date, invoice_value: @invoice.invoice_value, observations: @invoice.observations, payment_conditions: @invoice.payment_conditions, phone: @invoice.phone, quantity: @invoice.quantity, service_date: @invoice.service_date, service_value: @invoice.service_value, subtotal: @invoice.subtotal, total_value: @invoice.total_value, unit_value: @invoice.unit_value } }
    end

    assert_redirected_to invoice_url(Invoice.last)
  end

  test "should show invoice" do
    get invoice_url(@invoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_url(@invoice)
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { account_number: @invoice.account_number, address: @invoice.address, advance: @invoice.advance, city: @invoice.city, client: @invoice.client, client_code: @invoice.client_code, date_of_delivery: @invoice.date_of_delivery, description: @invoice.description, elaborate: @invoice.elaborate, invoice_date: @invoice.invoice_date, invoice_value: @invoice.invoice_value, observations: @invoice.observations, payment_conditions: @invoice.payment_conditions, phone: @invoice.phone, quantity: @invoice.quantity, service_date: @invoice.service_date, service_value: @invoice.service_value, subtotal: @invoice.subtotal, total_value: @invoice.total_value, unit_value: @invoice.unit_value } }
    assert_redirected_to invoice_url(@invoice)
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete invoice_url(@invoice)
    end

    assert_redirected_to invoices_url
  end
end
