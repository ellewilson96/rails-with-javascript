class AddAttributesToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :name, :string
    add_column :courses, :description, :string
    add_column :courses, :section, :integer
  end
end
