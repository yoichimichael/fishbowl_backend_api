class AddTurnPartToRounds < ActiveRecord::Migration[6.0]
  def change
    add_column :rounds, :turn_part, :string
  end
end
