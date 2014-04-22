class CreateVidrahyvanjas < ActiveRecord::Migration
  def change
    create_table :vidrahyvanjas do |t|
      t.string :initials
      t.string :faculty
      t.string :kyrs
      t.string :study_type
      t.string :pruchuna_vidrahyvanja
      t.string :z_jakogo_chusla
      t.string :nomer_i_data_nakazy

      t.timestamps
    end
  end
end
