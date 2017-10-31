class Comment
  include Mongoid::Document
  field :name, type: String
  field :content, type: String
  embedded_in :idol, :inverse_of => :comments

  # "inverse_of" reference : http://guides.rubyonrails.org/association_basics.html
end
