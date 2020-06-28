class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :team_letter
      t.string :team_name
      t.integer :score
      t.integer :game_id

      t.timestamps
    end
  end
end
