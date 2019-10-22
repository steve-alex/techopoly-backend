class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :money
      t.integer :position
      t.belongs_to :game, index: :true
      
      t.timestamps
    end
  end
end
