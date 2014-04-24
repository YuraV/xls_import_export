class CreateJoinTables < ActiveRecord::Migration
  def change
    create_table :join_tables do |t|
      t.string :initials
      t.string :specialnist
      t.string :nakaz_rektora
      t.integer :person_id

      t.timestamps
    end
  end
end
