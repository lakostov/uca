class CreateBreweries < ActiveRecord::Migration[5.1]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :city
      t.integer :state_id

      t.timestamps
    end
    add_index :breweries, :state_id
  end
end
