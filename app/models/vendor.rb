class Vendor < User
  has_many :listings
  has_many :reviews
  validates :email, presence: :true, uniqueness: :true 
  has_secure_password
  validates :password_digest, presence: :true
end
