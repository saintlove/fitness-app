class CreateEquipmentConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment_connections do |t|
      t.integer :equipment_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end
