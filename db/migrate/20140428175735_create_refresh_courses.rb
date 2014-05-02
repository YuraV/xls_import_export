class CreateRefreshCourses < ActiveRecord::Migration
  def change
    create_table :refresh_courses do |t|
      t.string :initials
      t.string :faculty_name
      t.string :kyrs
      t.string :refresh_reason
      t.string :study_type
      t.string :nakaz_rektora
      t.integer :student_id

      t.timestamps
    end
  end
end
