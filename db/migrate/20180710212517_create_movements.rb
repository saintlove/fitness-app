class CreateMovements < ActiveRecord::Migration[5.1]
  def change
    create_table :movements do |t|
      t.text :type

      t.timestamps
    end
  end
end
