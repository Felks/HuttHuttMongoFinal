class Member
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :password_digest, type: Hash
  


 
  validate :password, presence: true, confirmation:true, length: {in: 8..32}
  validates_uniqueness_of :email

end
