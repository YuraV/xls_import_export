class CreateTransferStudents < ActiveRecord::Migration
  def change
    create_table :transfer_students do |t|
      t.string :initials
      t.string :faculty_name
      t.string :kyrs
      t.string :transfer_reason
      t.string :study_type
      t.string :nakaz_rektora
      t.integer :student_id

      t.timestamps
    end
  end
end
