class CoursesStudents < ActiveRecord::Migration
  def change
    create_table :courses_students do |t|
      t.integer :course_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
