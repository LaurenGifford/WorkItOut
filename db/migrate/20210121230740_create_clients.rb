class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.belongs_to :coach
      t.string :name
      t.string :password_digest
      t.integer :age
      t.string :avatar
      t.text :bio
      t.integer :experience

      t.timestamps
    end
  end
end
