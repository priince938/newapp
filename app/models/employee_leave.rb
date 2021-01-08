class EmployeeLeave < ApplicationRecord
  belongs_to :Request_employee
  belongs_to :action_employee
end
