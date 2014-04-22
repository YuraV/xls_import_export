class CreateKnugaVudachiDuplomivs < ActiveRecord::Migration
  def change
    create_table :knuga_vudachi_duplomivs do |t|
      t.string :initials
      t.string :rik_vstypy
      t.string :rik_vupysky
      t.string :faculty
      t.string :specialnist
      t.string :kvalifikacia
      t.string :forma_navchanya
      t.string :vidznaka
      t.string :serija_ta_nomer_duplomy
      t.string :vudano
      t.string :protokol_dekanaty_vid

      t.timestamps
    end
  end
end
