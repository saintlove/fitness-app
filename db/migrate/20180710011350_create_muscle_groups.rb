class CreateMuscleGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :muscle_groups do |t|
      t.string :name
      t.text :image_url

      t.timestamps
    end
  end
end
