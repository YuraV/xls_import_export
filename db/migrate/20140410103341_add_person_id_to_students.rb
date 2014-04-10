class AddPersonIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :person_id, :integer
  end
end
