class Rating < ApplicationRecord
  has_one :user, through: :information



end