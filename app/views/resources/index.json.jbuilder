json.array!(@resources) do |resource|
  json.extract! resource, :id, :name, :type, :desc, :link
  json.url resource_url(resource, format: :json)
end
