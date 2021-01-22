class CreateCoaches < ActiveRecord::Migration[6.1]
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :password_digest
      t.string :avatar
      t.text :bio

      t.timestamps
    end
  end
end
