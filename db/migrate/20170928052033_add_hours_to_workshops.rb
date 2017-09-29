class AddHoursToWorkshops < ActiveRecord::Migration[5.0]
  def change
    add_column :workshops, :hours, :float
  end
end
