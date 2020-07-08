class AddCardFlashToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :card_flash, :string
  end
end
