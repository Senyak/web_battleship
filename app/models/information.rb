class Information < ApplicationRecord
  validates :wins, :losses, comparison: { greater_than_or_equal_to: 0 }
  belongs_to :rating
  has_one :user


end