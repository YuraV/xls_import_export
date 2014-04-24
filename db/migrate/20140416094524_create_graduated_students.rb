class CreateGraduatedStudents < ActiveRecord::Migration
  def change
    create_table :graduated_students do |t|
      t.string :initials
      t.string :faculty_name
      t.string :study_type
      t.string :specialnist
      t.string :qualification
      t.string :nakaz_rektora
      t.string :search_archive_data
      t.string :person_id

      t.timestamps
    end
  end
end
