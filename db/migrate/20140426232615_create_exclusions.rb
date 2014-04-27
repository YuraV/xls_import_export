class CreateExclusions < ActiveRecord::Migration
  def change
    create_table :exclusions do |t|
      t.string :initials
      t.string :faculty_name
      t.string :kyrs
      t.string :study_type
      t.string :exclusion_reason
      t.string :exclusion_date
      t.string :nakaz_rektora
      t.integer :student_id

      t.timestamps
    end
  end
end
