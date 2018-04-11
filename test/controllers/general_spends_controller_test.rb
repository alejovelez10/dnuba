require 'test_helper'

class GeneralSpendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @general_spend = general_spends(:one)
  end

  test "should get index" do
    get general_spends_url
    assert_response :success
  end

  test "should get new" do
    get new_general_spend_url
    assert_response :success
  end

  test "should create general_spend" do
    assert_difference('GeneralSpend.count') do
      post general_spends_url, params: { general_spend: { cost_center_id: @general_spend.cost_center_id, description: @general_spend.description, file: @general_spend.file, spend_date: @general_spend.spend_date, type_spend_id: @general_spend.type_spend_id, user_id: @general_spend.user_id, value: @general_spend.value } }
    end

    assert_redirected_to general_spend_url(GeneralSpend.last)
  end

  test "should show general_spend" do
    get general_spend_url(@general_spend)
    assert_response :success
  end

  test "should get edit" do
    get edit_general_spend_url(@general_spend)
    assert_response :success
  end

  test "should update general_spend" do
    patch general_spend_url(@general_spend), params: { general_spend: { cost_center_id: @general_spend.cost_center_id, description: @general_spend.description, file: @general_spend.file, spend_date: @general_spend.spend_date, type_spend_id: @general_spend.type_spend_id, user_id: @general_spend.user_id, value: @general_spend.value } }
    assert_redirected_to general_spend_url(@general_spend)
  end

  test "should destroy general_spend" do
    assert_difference('GeneralSpend.count', -1) do
      delete general_spend_url(@general_spend)
    end

    assert_redirected_to general_spends_url
  end
end
