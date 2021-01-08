class CreateEmployeeLeaves < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_leaves do |t|
      t.string :status
      t.string :reason
      t.date :start_date
      t.date :end_date
      t.references :Request_employee, index: true
      t.references :action_employee, index: true

      t.timestamps
    end
  end
end
