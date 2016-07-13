json.array!(@validate_passwords) do |validate_password|
  json.extract! validate_password, :id, :login, :password
  json.url validate_password_url(validate_password, format: :json)
end
