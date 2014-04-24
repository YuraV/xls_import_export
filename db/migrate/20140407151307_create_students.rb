class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string  :initials
      t.string  :study_type
      t.string  :faculty_name
      t.string  :nakaz_rektora
      t.integer :person_id
      t.timestamps
    end
  end
end
