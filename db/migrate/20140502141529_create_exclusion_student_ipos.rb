class CreateExclusionStudentIpos < ActiveRecord::Migration
  def change
    create_table :exclusion_student_ipos do |t|
      t.string :initials
      t.integer :student_ipo_id
      t.string :nakaz_rektora

      t.timestamps
    end
  end
end
