class AddEndTimeToTrainers < ActiveRecord::Migration[5.0]
  def change
    add_column :trainers, :end_time, :time
  end
end
