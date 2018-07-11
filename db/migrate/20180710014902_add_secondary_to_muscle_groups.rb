class AddSecondaryToMuscleGroups < ActiveRecord::Migration[5.1]
  def change
    add_column :muscle_groups, :secondary, :text
  end
end
