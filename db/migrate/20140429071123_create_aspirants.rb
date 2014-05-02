class CreateAspirants < ActiveRecord::Migration
  def change
    create_table :aspirants do |t|
      t.string :initials
      t.string :faculty_name
      t.boolean :with_separation
      t.string :code_and_name_of_the_speciality
      t.integer :person_id

      t.timestamps
    end
  end
end
