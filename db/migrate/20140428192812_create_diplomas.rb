class CreateDiplomas < ActiveRecord::Migration
  def change
    create_table :diplomas do |t|
      t.string :initials
      t.string :faculty_name
      t.string :study_type
      t.string :protocol_DEK
      t.string :year_of_entry
      t.string :end_year
      t.string :speciality
      t.string :qualification
      t.string :insignia
      t.string :series_and_number
      t.string :date
      t.integer :student_id

      t.timestamps
    end
  end
end
