json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date, :time, :firstname, :lastname, :office, :phone, :email, :staff
  json.url appointment_url(appointment, format: :json)
end
