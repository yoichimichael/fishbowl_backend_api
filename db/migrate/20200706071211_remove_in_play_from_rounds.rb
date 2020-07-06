class RemoveInPlayFromRounds < ActiveRecord::Migration[6.0]
  def change
    remove_column :rounds, :in_play, :boolean
  end
end
