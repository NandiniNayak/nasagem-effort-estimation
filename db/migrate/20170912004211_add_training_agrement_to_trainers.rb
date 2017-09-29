class AddTrainingAgrementToTrainers < ActiveRecord::Migration[5.0]
  def change
    add_column :trainers, :training_agreement, :string
  end
end
