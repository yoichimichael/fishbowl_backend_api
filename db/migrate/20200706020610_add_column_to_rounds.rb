class AddColumnToRounds < ActiveRecord::Migration[6.0]
  def change
    add_column :rounds, :in_play, :boolean
  end
end
