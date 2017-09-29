class CreateWorkshops < ActiveRecord::Migration[5.0]
  def change
    create_table :workshops do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.string :address
      t.string :contact
      t.integer :amount
      t.references :effort, foreign_key: true

      t.timestamps
    end
  end
end
