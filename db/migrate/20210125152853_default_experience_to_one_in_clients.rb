class DefaultExperienceToOneInClients < ActiveRecord::Migration[6.1]
  def change
    change_column :clients, :experience, :integer, default: 1
  end
end
