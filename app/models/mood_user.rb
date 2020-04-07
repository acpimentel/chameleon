class MoodUser < ApplicationRecord
  belongs_to :mood
  belongs_to :user
end
