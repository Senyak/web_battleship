class User < ApplicationRecord
  validates :username, :email, presence: true
  validates :email, uniqueness: true

  has_secure_password

  def self.from_omniauth(auth)
    where(email: auth.info.email).first_or_initialize do |user|
      user.username = auth.info.name
      user.email = auth.info.email
      user.password = SecureRandom.hex
    end
  end
end