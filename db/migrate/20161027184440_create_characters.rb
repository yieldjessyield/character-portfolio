class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :commando
      t.integer :hacker
      t.integer :witch
      t.integer :user_id
      t.integer :game_id
      t.timestamps
    end
  end
end
