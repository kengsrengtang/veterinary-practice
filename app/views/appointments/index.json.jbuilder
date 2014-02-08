json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :doctor_id, :date_visit, :pet, :customer, :reminder, :reason_for_visit
  json.url appointment_url(appointment, format: :json)
end
