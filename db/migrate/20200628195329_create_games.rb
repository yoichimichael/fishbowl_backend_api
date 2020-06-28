class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :join_code
      t.integer :host_id

      t.timestamps
    end
  end
end
