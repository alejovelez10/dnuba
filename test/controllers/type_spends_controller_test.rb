require 'test_helper'

class TypeSpendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_spend = type_spends(:one)
  end

  test "should get index" do
    get type_spends_url
    assert_response :success
  end

  test "should get new" do
    get new_type_spend_url
    assert_response :success
  end

  test "should create type_spend" do
    assert_difference('TypeSpend.count') do
      post type_spends_url, params: { type_spend: { code: @type_spend.code, description: @type_spend.description, name: @type_spend.name, user_id: @type_spend.user_id } }
    end

    assert_redirected_to type_spend_url(TypeSpend.last)
  end

  test "should show type_spend" do
    get type_spend_url(@type_spend)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_spend_url(@type_spend)
    assert_response :success
  end

  test "should update type_spend" do
    patch type_spend_url(@type_spend), params: { type_spend: { code: @type_spend.code, description: @type_spend.description, name: @type_spend.name, user_id: @type_spend.user_id } }
    assert_redirected_to type_spend_url(@type_spend)
  end

  test "should destroy type_spend" do
    assert_difference('TypeSpend.count', -1) do
      delete type_spend_url(@type_spend)
    end

    assert_redirected_to type_spends_url
  end
end
