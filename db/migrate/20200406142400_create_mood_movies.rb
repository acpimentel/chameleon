class CreateMoodMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :mood_movies do |t|
      t.references :movie, foreign_key: true
      t.references :mood, foreign_key: true

      t.timestamps
    end
  end
end
