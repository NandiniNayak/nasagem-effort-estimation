class AddNameToEfforts < ActiveRecord::Migration[5.0]
  def change
    add_column :efforts, :name, :string
  end
end
