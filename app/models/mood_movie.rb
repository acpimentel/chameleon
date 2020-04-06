class MoodMovie < ApplicationRecord
  belongs_to :mood
  belongs_to :movie
end
