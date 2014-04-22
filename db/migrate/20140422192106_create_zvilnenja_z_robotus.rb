class CreateZvilnenjaZRobotus < ActiveRecord::Migration
  def change
    create_table :zvilnenja_z_robotus do |t|
      t.string :initials
      t.string :posada
      t.string :pidrozdil
      t.string :z_jakogo_chusla
      t.string :pruchuna
      t.string :nakaz_rektora

      t.timestamps
    end
  end
end
