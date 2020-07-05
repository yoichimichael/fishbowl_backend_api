class CreateInPlayCards < ActiveRecord::Migration[6.0]
  def change
    create_table :in_play_cards do |t|
      t.integer :round_id
      t.integer :submission_id

      t.timestamps
    end
  end
end
