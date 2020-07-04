class CreateSubmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :submissions do |t|
      t.text :content
      t.integer :game_id
      t.integer :player_id

      t.timestamps
    end
  end
end
