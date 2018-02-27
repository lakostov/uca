class AddLatLongToStates < ActiveRecord::Migration[5.1]
  def change
    add_column :states, :lat, :string
    add_column :states, :long, :string
  end
end
