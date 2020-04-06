class CreateMoodUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :mood_users do |t|
      t.references :user, foreign_key: true
      t.references :mood, foreign_key: true

      t.timestamps
    end
  end
end
