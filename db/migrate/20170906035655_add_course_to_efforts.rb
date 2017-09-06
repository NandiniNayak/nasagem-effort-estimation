class AddCourseToEfforts < ActiveRecord::Migration[5.0]
  def change
    add_column :efforts, :course_name, :string
  end
end
