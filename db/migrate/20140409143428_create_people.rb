class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :initials
      t.string :person_id

      t.timestamps
    end
  end
end
