class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :student_id
      t.integer :user_id
      t.string :behavior
      t.integer :score
      
      t.timestamps null: false
    end
  end
end
