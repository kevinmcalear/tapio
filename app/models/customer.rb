class Customer < User
  has_many :listings, through: :bookings
  validates :email, presence: :true, uniqueness: :true 
  has_secure_password
  validates :password_digest, presence: :true
end
