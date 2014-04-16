class CreateJoinTables < ActiveRecord::Migration
  def change
    create_table :join_tables do |t|
      t.string :initials
      t.string :qualification
      t.string :appointment

      t.timestamps
    end
  end
end
