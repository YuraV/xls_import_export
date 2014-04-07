class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :initials
      t.string :department
      t.string :study_type
      t.string :appointment

      t.timestamps
    end
  end
end
