class MoodQuote < ApplicationRecord
  belongs_to :mood
  belongs_to :quote
end
