class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.string :abrv
      t.string :name
      t.integer :population

      t.timestamps
    end
  end
end
