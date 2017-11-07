class AddDaysToTrainers < ActiveRecord::Migration[5.0]
  def change
    add_column :trainers, :days, :string
  end
end
