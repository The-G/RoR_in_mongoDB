class Idol
  include Mongoid::Document

  field :name, type: String
  field :age, type: Integer
  field :test, type: String
  # field :birthday, :type => Date

  # to set name necessary
  validates_presence_of :name


  embeds_many :comments

  belongs_to :author
end
