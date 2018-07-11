class RemoveEquipmentFromExercises < ActiveRecord::Migration[5.1]
  def change
    remove_column :exercises, :equipment, :text
  end
end
