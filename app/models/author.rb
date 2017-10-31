class Author
  include Mongoid::Document
  field :name

  has_many :idols
end
