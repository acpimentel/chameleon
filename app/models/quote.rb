class Quote < ApplicationRecord
  has_many :moods, through: :mood_quotes
end
