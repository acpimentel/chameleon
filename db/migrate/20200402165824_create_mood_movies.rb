class CreateMoodMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :mood_movies do |t|

      t.timestamps
    end
  end
end
