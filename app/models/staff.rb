class Staff
  include Mongoid::Document
  include Mongoid::Timestamps
  field :login, type: String
  field :password, type: String
  field :admin, type: Mongoid::Boolean
  field :office, type: String
end
