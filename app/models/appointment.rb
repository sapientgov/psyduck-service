class Appointment
  include Mongoid::Document
  include Mongoid::Timestamps
  field :date, type: String
  field :time, type: String
  field :firstname, type: String
  field :lastname, type: String
  field :office, type: String
  field :phone, type: String
  field :email, type: String
  field :staff, type: String
end
