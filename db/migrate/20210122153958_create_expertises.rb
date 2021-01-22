class CreateExpertises < ActiveRecord::Migration[6.1]
  def change
    create_table :expertises do |t|
      t.belongs_to :coach, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
