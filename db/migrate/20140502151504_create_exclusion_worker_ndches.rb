class CreateExclusionWorkerNdches < ActiveRecord::Migration
  def change
    create_table :exclusion_worker_ndches do |t|
      t.string :initials
      t.string :reason
      t.string :date
      t.integer :worker_dch_id
      t.string :nakaz_rektora

      t.timestamps
    end
  end
end
