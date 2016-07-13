json.array!(@staffs) do |staff|
  json.extract! staff, :id, :login, :password, :admin
  json.url staff_url(staff, format: :json)
end
