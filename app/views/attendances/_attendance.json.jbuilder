json.extract! attendance, :id, :time_in, :time_out, :remark, :employee_id, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)
