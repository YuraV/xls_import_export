class CreateGraduatedStudents < ActiveRecord::Migration
  def change
    create_table :graduated_students do |t|
      t.string :initials
      t.string :faculty_name
      t.string :study_type
      t.string :department
      t.string :qualification
      t.string :appointment
      t.string :search_archive_data
      t.string :person_id

      t.timestamps
    end
  end
end
