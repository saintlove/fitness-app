class ChangeEquipmentTableNameBack < ActiveRecord::Migration[5.1]
  def change
    rename_table :equipments, :equipment
  end
end
