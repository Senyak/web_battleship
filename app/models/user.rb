class User < ApplicationRecord
  validates :username, :email, presence: true
  validates :email, uniqueness: true
  has_one :information
  has_many :gametimes
  has_secure_password


end