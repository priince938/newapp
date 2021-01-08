require "application_system_test_case"

class EmployeeLeavesTest < ApplicationSystemTestCase
  setup do
    @employee_leafe = employee_leaves(:one)
  end

  test "visiting the index" do
    visit employee_leaves_url
    assert_selector "h1", text: "Employee Leaves"
  end

  test "creating a Employee leave" do
    visit employee_leaves_url
    click_on "New Employee Leave"

    fill_in "Request employee", with: @employee_leafe.Request_employee_id
    fill_in "Action employee", with: @employee_leafe.action_employee_id
    fill_in "End date", with: @employee_leafe.end_date
    fill_in "Reason", with: @employee_leafe.reason
    fill_in "Start date", with: @employee_leafe.start_date
    fill_in "Status", with: @employee_leafe.status
    click_on "Create Employee leave"

    assert_text "Employee leave was successfully created"
    click_on "Back"
  end

  test "updating a Employee leave" do
    visit employee_leaves_url
    click_on "Edit", match: :first

    fill_in "Request employee", with: @employee_leafe.Request_employee_id
    fill_in "Action employee", with: @employee_leafe.action_employee_id
    fill_in "End date", with: @employee_leafe.end_date
    fill_in "Reason", with: @employee_leafe.reason
    fill_in "Start date", with: @employee_leafe.start_date
    fill_in "Status", with: @employee_leafe.status
    click_on "Update Employee leave"

    assert_text "Employee leave was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee leave" do
    visit employee_leaves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee leave was successfully destroyed"
  end
end
