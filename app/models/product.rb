class Product
  include Mongoid::Document
  field :pname, type: String
  field :pdescription, type: String
  field :price, type: BigDecimal
  


   # attr_accessible :pname, :pdescription, :price
  # validates_uniqueness_of :pname
end
