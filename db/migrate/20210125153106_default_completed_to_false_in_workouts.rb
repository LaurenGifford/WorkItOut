class DefaultCompletedToFalseInWorkouts < ActiveRecord::Migration[6.1]
  def change
    change_column :workouts, :completed, :boolean, default: false
  end
end
