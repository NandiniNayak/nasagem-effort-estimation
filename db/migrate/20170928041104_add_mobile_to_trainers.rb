class AddMobileToTrainers < ActiveRecord::Migration[5.0]
  def change
    add_column :trainers, :mobile, :string
  end
end
