class User < ApplicationRecord
  has_secure_password
  has_many :gossips
  has_many :comments
  validates :first_name, 
    presence: true
  validates :last_name, 
    presence: true
  validates :password, 
    length: { in: 6..20 }
  validates :email, 
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
end
