class AddCourseIdToRoster < ActiveRecord::Migration
  def change
    add_column :rosters, :student_id, :integer
  end
end
