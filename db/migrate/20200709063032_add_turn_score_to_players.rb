class AddTurnScoreToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :turn_score, :integer
  end
end
