class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.belongs_to :category, null: false, foreign_key: true
      t.string :name
      t.integer :difficulty
      t.string :muscle_group
      t.string :url

      t.timestamps
    end
  end
end
