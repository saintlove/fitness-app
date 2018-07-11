class ChangingNameToPrimary < ActiveRecord::Migration[5.1]
  def change
    rename_column :muscle_groups, :name, :primary
  end
end
