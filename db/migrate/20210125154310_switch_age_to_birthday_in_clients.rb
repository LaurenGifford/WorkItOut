class SwitchAgeToBirthdayInClients < ActiveRecord::Migration[6.1]
  def change
    remove_column :clients, :age
    add_column :clients, :birthday, :date
  end
end
