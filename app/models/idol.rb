class Idol
  include Mongoid::Document

  field :name, type: String
  field :age, type: Integer
  field :test, type: String
  # field :birthday, :type => Date
end
