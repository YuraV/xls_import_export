class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string  :initials
      t.string  :department
      t.string  :faculty_name
      t.string  :appointment
      t.integer :person_id
      t.timestamps
    end
  end
end
