class CreatePonovlenyas < ActiveRecord::Migration
  def change
    create_table :ponovlenyas do |t|
      t.string :initials
      t.string :faculty
      t.string :kyrs
      t.string :study_type
      t.string :pruchuna_ponovlenya_tekst_nakazy
      t.string :z_jakogo_chusla
      t.string :nomer_i_data_nakazy

      t.timestamps
    end
  end
end
