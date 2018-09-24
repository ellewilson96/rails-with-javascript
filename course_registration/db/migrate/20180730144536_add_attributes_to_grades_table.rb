class AddAttributesToGradesTable < ActiveRecord::Migration
  def change
    add_column :grades, :behavior, :string
    add_column :grades, :letter_grade, :string
  end
end
