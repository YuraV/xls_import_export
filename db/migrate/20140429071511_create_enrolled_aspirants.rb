class CreateEnrolledAspirants < ActiveRecord::Migration
  def change
    create_table :enrolled_aspirants do |t|
      t.string :initials
      t.string :date
      t.string :nakaz_rektora
      t.integer :aspirant_id

      t.timestamps
    end
  end
end
