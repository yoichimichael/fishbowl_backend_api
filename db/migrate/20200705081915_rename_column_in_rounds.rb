class RenameColumnInRounds < ActiveRecord::Migration[6.0]
  def change
    rename_column :rounds, :performer_id, :player_id
  end
end
