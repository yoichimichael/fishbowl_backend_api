class AddCardsPerPlayerToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :cards_per_player, :integer
  end
end
