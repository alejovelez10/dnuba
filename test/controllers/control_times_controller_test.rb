require 'test_helper'

class ControlTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @control_time = control_times(:one)
  end

  test "should get index" do
    get control_times_url
    assert_response :success
  end

  test "should get new" do
    get new_control_time_url
    assert_response :success
  end

  test "should create control_time" do
    assert_difference('ControlTime.count') do
      post control_times_url, params: { control_time: { hours: @control_time.hours, observations: @control_time.observations, registration_date: @control_time.registration_date, user_id: @control_time.user_id } }
    end

    assert_redirected_to control_time_url(ControlTime.last)
  end

  test "should show control_time" do
    get control_time_url(@control_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_control_time_url(@control_time)
    assert_response :success
  end

  test "should update control_time" do
    patch control_time_url(@control_time), params: { control_time: { hours: @control_time.hours, observations: @control_time.observations, registration_date: @control_time.registration_date, user_id: @control_time.user_id } }
    assert_redirected_to control_time_url(@control_time)
  end

  test "should destroy control_time" do
    assert_difference('ControlTime.count', -1) do
      delete control_time_url(@control_time)
    end

    assert_redirected_to control_times_url
  end
end
