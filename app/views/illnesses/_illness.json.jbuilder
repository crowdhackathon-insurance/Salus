json.extract! illness, :id, :symptom, :hospital, :data, :appointment_id, :created_at, :updated_at
json.url illness_url(illness, format: :json)