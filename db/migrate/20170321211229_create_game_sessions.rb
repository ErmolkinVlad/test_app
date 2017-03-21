class CreateGameSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :game_sessions do |t|
      t.integer :score
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
