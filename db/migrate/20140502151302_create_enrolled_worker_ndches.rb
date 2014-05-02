class CreateEnrolledWorkerNdches < ActiveRecord::Migration
  def change
    create_table :enrolled_worker_ndches do |t|
      t.string :initials
      t.string :position_which_is_included
      t.string :from_date
      t.string :till_date
      t.integer :worker_dch_id
      t.string :nakaz_rektora

      t.timestamps
    end
  end
end
