class CreateEnroledStudents < ActiveRecord::Migration
  def change
    create_table :enroled_students do |t|
      t.string :initials
      t.string :faculty_name
      t.string :study_type
      t.string :nakaz_rektora

      t.timestamps
    end
  end
end
