class CreateTransferToNewThemeWorkerNdches < ActiveRecord::Migration
  def change
    create_table :transfer_to_new_theme_worker_ndches do |t|
      t.string :initials
      t.string :from_date
      t.string :till_date
      t.string :new_theme
      t.string :new_salary
      t.integer :worker_dch_id
      t.string :nakaz_rektora

      t.timestamps
    end
  end
end
