class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.float :abv
      t.float :ibu
      t.float :ounces
      t.integer :brewery_id
      t.integer :style_id

      t.timestamps
    end
    add_index :beers, :brewery_id
    add_index :beers, :style_id
  end
end
