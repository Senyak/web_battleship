class GameTime < ApplicationRecord
  #validates :time, comparison: { greater_than_or_equal_to: 0 }
  belongs_to :user


end