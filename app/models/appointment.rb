class Appointment
  include Mongoid::Document
  include Mongoid::Timestamps
  field :time, type: String
  field :person, type: String
  field :office, type: String
  field :phone, type: String
  field :email, type: String
  field :staff, type: String
end
