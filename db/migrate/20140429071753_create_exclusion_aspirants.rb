class CreateExclusionAspirants < ActiveRecord::Migration
  def change
    create_table :exclusion_aspirants do |t|
      t.string :initials
      t.string :date
      t.string :nakaz_rektora
      t.integer :aspirant_id

      t.timestamps
    end
  end
end
