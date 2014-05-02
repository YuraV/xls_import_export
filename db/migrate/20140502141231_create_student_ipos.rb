class CreateStudentIpos < ActiveRecord::Migration
  def change
    create_table :student_ipos do |t|
      t.string :initials
      t.integer :person_id
      t.string :faculty_name
      t.string :after_diploma_institute
      t.string :institute_of_qualification_improvment
      t.string :speciality

      t.timestamps
    end
  end
end
