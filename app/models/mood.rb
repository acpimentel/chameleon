class Mood < ApplicationRecord

  MOOD_NAME = [
"Happy",
"Chill",
"Energetic",
"Throwback",
"Rage",
"Sleepy",
"Romantic",
"Melancholy",
"Cheerful",
"Humorous",
"Idyllic",
"Madness",
"Mysterious",
"Excited",
"Silly",
"Optimistic",
"Frustrated",
"Sad",
"Stressed",
"Irritated",
"Guilty",
"Indifferent"
]

  has_many :users, through: :mood_users
  has_many :quotes, through: :mood_quotes
  has_many :movies, through: :mood_movies
end
