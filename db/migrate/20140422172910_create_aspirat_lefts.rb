class CreateAspiratLefts < ActiveRecord::Migration
  def change
    create_table :aspirat_lefts do |t|
      t.string :initials
      t.string :faculty
      t.boolean :z_vidruvom_vid_vurobnyctva
      t.string :shufr_i_nazva_specialnosti
      t.string :vidrahyvanja_vid_chusla
      t.string :nakaz_rektora

      t.timestamps
    end
  end
end
