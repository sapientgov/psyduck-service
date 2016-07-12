class Hero
  include Mongoid::Document
  field :name, type: String
  field :age, type: Integer
  field :height, type: Float
end
