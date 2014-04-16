class CreateJoinTables < ActiveRecord::Migration
  def change
    create_table :join_tables do |t|
      t.string :initials
      t.string :qualification
      t.string :appointment
      t.integer :person_id

      t.timestamps
    end
  end
end
