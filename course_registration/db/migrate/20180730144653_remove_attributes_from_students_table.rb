class RemoveAttributesFromStudentsTable < ActiveRecord::Migration
  def change
    remove_column :students, :favorite_subject
  end
end
