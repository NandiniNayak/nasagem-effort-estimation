class AddContactPersonToWorkshops < ActiveRecord::Migration[5.0]
  def change
    add_column :workshops, :contact_person, :string
  end
end
