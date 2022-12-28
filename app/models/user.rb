class User < ApplicationRecord
  validates :username, :email, presence: true
  validates :email, uniqueness: true
  belongs_to :rating, through: :information
  has_many :gametimes
  has_secure_password


end