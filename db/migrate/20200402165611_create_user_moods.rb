class CreateUserMoods < ActiveRecord::Migration[6.0]
  def change
    create_table :user_moods do |t|

      t.timestamps
    end
  end
end
