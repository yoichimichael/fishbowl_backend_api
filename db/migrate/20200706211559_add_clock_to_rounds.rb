class AddClockToRounds < ActiveRecord::Migration[6.0]
  def change
    add_column :rounds, :clock, :integer
  end
end
