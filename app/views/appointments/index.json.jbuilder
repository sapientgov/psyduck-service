json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :time, :person, :office, :phone, :email, :staff
  json.url appointment_url(appointment, format: :json)
end
