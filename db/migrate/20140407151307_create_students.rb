class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string  :initials
      t.integer :person_id
      t.timestamps
    end
  end
end
