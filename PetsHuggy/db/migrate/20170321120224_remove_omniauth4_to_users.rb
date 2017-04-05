class RemoveOmniauth4ToUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :image, :string
    remove_column :users, :name, :string
  end
end
