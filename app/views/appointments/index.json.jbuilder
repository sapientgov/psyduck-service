json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :time, :fname, :lname, :office, :phone, :email, :staff
  json.url appointment_url(appointment, format: :json)
end
