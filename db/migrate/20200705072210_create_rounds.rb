class CreateRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds do |t|
      t.string :name
      t.integer :game_id
      t.integer :player_id

      t.timestamps
    end
  end
end
