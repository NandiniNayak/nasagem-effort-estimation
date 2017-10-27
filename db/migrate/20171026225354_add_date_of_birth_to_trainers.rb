class AddDateOfBirthToTrainers < ActiveRecord::Migration[5.0]
  def change
    add_column :trainers, :dob, :date
  end
end
