class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :industry
      t.integer :price
      t.integer :servers
      t.integer :tile_number
      t.belongs_to :player, index: :true

      t.timestamps
    end
  end
end
