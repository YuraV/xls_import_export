class CreatePovtornuiKyrs < ActiveRecord::Migration
  def change
    create_table :povtornui_kyrs do |t|
      t.string :initials
      t.string :faculty
      t.string :kyrs
      t.string :study_type
      t.string :pruchuna_povtornogo_kyrsy
      t.string :nakaz

      t.timestamps
    end
  end
end
