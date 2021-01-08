require 'test_helper'

class EmployeeLeavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_leafe = employee_leaves(:one)
  end

  test "should get index" do
    get employee_leaves_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_leafe_url
    assert_response :success
  end

  test "should create employee_leafe" do
    assert_difference('EmployeeLeave.count') do
      post employee_leaves_url, params: { employee_leafe: { Request_employee_id: @employee_leafe.Request_employee_id, action_employee_id: @employee_leafe.action_employee_id, end_date: @employee_leafe.end_date, reason: @employee_leafe.reason, start_date: @employee_leafe.start_date, status: @employee_leafe.status } }
    end

    assert_redirected_to employee_leafe_url(EmployeeLeave.last)
  end

  test "should show employee_leafe" do
    get employee_leafe_url(@employee_leafe)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_leafe_url(@employee_leafe)
    assert_response :success
  end

  test "should update employee_leafe" do
    patch employee_leafe_url(@employee_leafe), params: { employee_leafe: { Request_employee_id: @employee_leafe.Request_employee_id, action_employee_id: @employee_leafe.action_employee_id, end_date: @employee_leafe.end_date, reason: @employee_leafe.reason, start_date: @employee_leafe.start_date, status: @employee_leafe.status } }
    assert_redirected_to employee_leafe_url(@employee_leafe)
  end

  test "should destroy employee_leafe" do
    assert_difference('EmployeeLeave.count', -1) do
      delete employee_leafe_url(@employee_leafe)
    end

    assert_redirected_to employee_leaves_url
  end
end
