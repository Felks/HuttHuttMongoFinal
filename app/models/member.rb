class Member
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :password_digest, type: String


  validates_uniqueness_of :email
  # has_secure_password
end
