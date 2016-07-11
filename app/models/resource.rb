class Resource
  include Mongoid::Document
  field :name, type: String
  field :type, type: String
  field :desc, type: String
  field :link, type: String
end
