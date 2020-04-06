class CreateMoodQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :mood_quotes do |t|
      t.references :quote, foreign_key: true
      t.references :mood, foreign_key: true

      t.timestamps
    end
  end
end
