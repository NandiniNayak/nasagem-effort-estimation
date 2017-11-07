class AddStartTimeToTrainers < ActiveRecord::Migration[5.0]
  def change
    add_column :trainers, :start_time, :time
  end
end
