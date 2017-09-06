class CreateEfforts < ActiveRecord::Migration[5.0]
  def change
    create_table :efforts do |t|
      t.integer :lead_number
      t.integer :lead_cost
      t.integer :ta_number
      t.integer :ta_cost
      t.integer :hours
      t.integer :accomodation
      t.integer :food
      t.string :travel_medium
      t.integer :travel_cost
      t.integer :equipment
      t.string :catering
      t.integer :catering_cost
      t.integer :attendees_count
      t.integer :shipping_cost
      t.integer :misc
      t.string :course_prep

      t.timestamps
    end
  end
end
