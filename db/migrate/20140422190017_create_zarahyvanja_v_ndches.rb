class CreateZarahyvanjaVNdches < ActiveRecord::Migration
  def change
    create_table :zarahyvanja_v_ndches do |t|
      t.string :initials
      t.string :posada_na_chas_zarah
      t.string :posada_na_jaky_zarah
      t.string :tema_na_jaky_zarah
      t.string :symisnuctvo
      t.string :stavka
      t.string :zarahyvanja_z
      t.string :zarahyvanja_do
      t.string :posadovyi
      t.string :yklad
      t.string :nakaz_rektora

      t.timestamps
    end
  end
end
