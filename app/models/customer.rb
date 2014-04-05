class Customer < User
  has_many :bookings
  has_many :timeslots, through: :bookings
  has_many :reviews
  validates :email, presence: :true, uniqueness: :true 
  has_secure_password
  validates :password_digest, presence: :true
end
