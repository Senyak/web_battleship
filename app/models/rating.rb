class Rating < ApplicationRecord
  belongs_to :user, through: :information



end