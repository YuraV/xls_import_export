class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :initials
      t.string :faculty_name
      t.string :specialnist
      t.string :qualification
      t.string :person_id

      t.timestamps
    end
  end
end
