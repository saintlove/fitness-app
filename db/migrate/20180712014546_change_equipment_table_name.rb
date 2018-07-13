class ChangeEquipmentTableName < ActiveRecord::Migration[5.1]
  def change
    rename_table :equipment, :equipments
  end
end
