class CreateTrainerWorkshops < ActiveRecord::Migration[5.0]
  def change
    create_table :trainer_workshops do |t|
      t.references :trainer, foreign_key: true
      t.references :workshop, foreign_key: true

      t.timestamps
    end
  end
end
