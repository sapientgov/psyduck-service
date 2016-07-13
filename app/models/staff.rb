class Staff
  include Mongoid::Document
  field :login, type: String
  field :password, type: String
  field :admin, type: Mongoid::Boolean
end
