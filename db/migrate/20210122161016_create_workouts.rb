class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.belongs_to :client, null: false, foreign_key: true
      t.string :name
      t.integer :length
      t.boolean :completed

      t.timestamps
    end
  end
end
