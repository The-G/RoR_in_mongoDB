class Product
  include Mongoid::Document
  field :name, type: String
  field :price, type: Integer
  field :score, type: Integer
  field :review, type: String
  field :image_url, type: String
end
