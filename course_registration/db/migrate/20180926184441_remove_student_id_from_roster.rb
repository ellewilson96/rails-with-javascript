class RemoveStudentIdFromRoster < ActiveRecord::Migration
  def change
    remove_column :rosters, :student_id
  end
end
