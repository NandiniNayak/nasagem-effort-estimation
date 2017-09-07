class AddDaysToEfforts < ActiveRecord::Migration[5.0]
  def change
    add_column :efforts, :days, :integer
  end
end
