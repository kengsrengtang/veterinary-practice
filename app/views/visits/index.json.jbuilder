json.array!(@visits) do |visit|
  json.extract! visit, :id, :doctor_id, :pet_name, :pet_type, :breed, :age, :weight, :last_visit
  json.url visit_url(visit, format: :json)
end
