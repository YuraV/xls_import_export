class CreateZvilnenyaZNdches < ActiveRecord::Migration
  def change
    create_table :zvilnenya_z_ndches do |t|
      t.string :initials
      t.string :posada
      t.string :pruchuna
      t.string :z_jakogo_chusla
      t.string :nakaz_rektora

      t.timestamps
    end
  end
end
