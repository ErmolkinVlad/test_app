class AddNameToGameSession < ActiveRecord::Migration[5.0]
  def change
    add_column :game_sessions, :name, :string
  end
end
