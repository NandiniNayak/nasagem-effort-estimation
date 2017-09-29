class AddWwcNumberToTrainers < ActiveRecord::Migration[5.0]
  def change
    add_column :trainers, :wwc_number, :string
  end
end
