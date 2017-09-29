class AddEmailToTrainers < ActiveRecord::Migration[5.0]
  def change
    add_column :trainers, :email, :string
  end
end
