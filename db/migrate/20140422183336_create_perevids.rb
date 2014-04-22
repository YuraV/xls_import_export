class CreatePerevids < ActiveRecord::Migration
  def change
    create_table :perevids do |t|
      t.string :initials
      t.string :faculty
      t.string :kyrs
      t.string :study_type
      t.string :tekst_nakazy
      t.string :data_nakazy

      t.timestamps
    end
  end
end
