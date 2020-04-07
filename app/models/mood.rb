class Mood < ApplicationRecord
  has_many :users, through: :mood_users
  has_many :quotes, through: :mood_quotes
  has_many :movies, through: :mood_movies
end
