class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.datetime :time_in
      t.datetime :time_out
      t.string :remark
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
