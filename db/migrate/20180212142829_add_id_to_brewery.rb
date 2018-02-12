class AddIdToBrewery < ActiveRecord::Migration[5.1]
  def change
  	add_column :breweries, :bid, :integer
  end
end
