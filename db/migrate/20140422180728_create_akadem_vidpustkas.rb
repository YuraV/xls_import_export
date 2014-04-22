class CreateAkademVidpustkas < ActiveRecord::Migration
  def change
    create_table :akadem_vidpustkas do |t|
      t.string :initials
      t.string :faculty
      t.string :kyrs
      t.string :study_type
      t.string :pruchuna_akadem_vidpystku
      t.string :data_pochatky_akadem_vidpystku
      t.string :data_zavershenja_akadem_vidpystku
      t.string :nomer_data_nakazy

      t.timestamps
    end
  end
end
