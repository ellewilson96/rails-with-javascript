class UpdateGradesTable < ActiveRecord::Migration
  def change
    remove_column :grades, :letter_grade
    add_column :grades, :score, :integer
  end
end
