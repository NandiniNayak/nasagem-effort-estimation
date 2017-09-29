class CreateTrainers < ActiveRecord::Migration[5.0]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :category
      t.integer :cost
      t.string :availability

      t.timestamps
    end
  end
end
