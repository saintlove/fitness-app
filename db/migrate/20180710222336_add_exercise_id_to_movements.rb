class AddExerciseIdToMovements < ActiveRecord::Migration[5.1]
  def change
    add_column :movements, :exercise_id, :integer
  end
end
