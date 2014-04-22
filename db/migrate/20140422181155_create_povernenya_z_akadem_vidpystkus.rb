class CreatePovernenyaZAkademVidpystkus < ActiveRecord::Migration
  def change
    create_table :povernenya_z_akadem_vidpystkus do |t|
      t.string :initials
      t.string :faculty
      t.string :kyrs
      t.string :z_jakogo_chusla_dopysheno_do_zanyat
      t.string :y_zvyazky_z_chum_dopysheno_do_zanyat
      t.string :nomer_i_data_nakazy

      t.timestamps
    end
  end
end
