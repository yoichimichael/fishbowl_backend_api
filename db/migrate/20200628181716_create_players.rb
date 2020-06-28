class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :game_id
      t.integer :team_id

      t.timestamps
    end
  end
end
