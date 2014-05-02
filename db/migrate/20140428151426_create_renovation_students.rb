class CreateRenovationStudents < ActiveRecord::Migration
  def change
    create_table :renovation_students do |t|
      t.string :initials
      t.string :faculty_name
      t.string :kyrs
      t.string :renovation_reason
      t.string :study_type
      t.string :date
      t.string :nakaz_rektora
      t.integer :student_id

      t.timestamps
    end
  end
end
