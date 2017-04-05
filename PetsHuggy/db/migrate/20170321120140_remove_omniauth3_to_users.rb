class RemoveOmniauth3ToUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :mage, :string
    remove_column :users, :name, :string
  end
end
