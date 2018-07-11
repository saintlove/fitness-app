class RemoveEquipmentIdFromExercises < ActiveRecord::Migration[5.1]
  def change
    remove_column :exercises, :equipment_id, :integer
  end
end
