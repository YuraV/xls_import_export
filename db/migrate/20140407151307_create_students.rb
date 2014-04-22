class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string  :initials
      t.string  :faculty
      t.string  :study_type
      t.string  :appointment
      t.integer :person_id
      t.timestamps
    end
  end
end
