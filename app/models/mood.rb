class Mood < ApplicationRecord
  has_many :user, through: :user_mood
  has_many :quote, through: :mood_quote
  has_many :movie, through: :mood_movie
end
