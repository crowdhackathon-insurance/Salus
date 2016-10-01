json.extract! appointment, :id, :doctor_name, :date, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)