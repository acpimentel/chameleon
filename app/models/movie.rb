class Movie < ApplicationRecord
  has_many :movies, through: :mood_movies
end
