class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.integer :section
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
