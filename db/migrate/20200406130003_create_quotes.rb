class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.string :quote_text
      t.string :author

      t.timestamps
    end
  end
end
