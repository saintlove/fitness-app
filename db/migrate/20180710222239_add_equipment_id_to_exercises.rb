class AddEquipmentIdToExercises < ActiveRecord::Migration[5.1]
  def change
    add_column :exercises, :equipment_id, :integer
  end
end
