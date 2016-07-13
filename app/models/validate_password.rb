class ValidatePassword
  include Mongoid::Document
  include Mongoid::Timestamps
  field :login, type: String
  field :password, type: String
end
