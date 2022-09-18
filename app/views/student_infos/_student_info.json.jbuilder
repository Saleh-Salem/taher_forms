json.extract! student_info, :id, :first_name, :last_name, :age, :address, :geneder, :occuption, :matrial_status, :created_at, :updated_at
json.url student_info_url(student_info, format: :json)
