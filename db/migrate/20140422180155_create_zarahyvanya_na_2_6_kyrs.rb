class CreateZarahyvanyaNa26Kyrs < ActiveRecord::Migration
  def change
    create_table :zarahyvanya_na_2_6_kyrs do |t|
      t.string :initials
      t.string :faculty
      t.string :kyrs
      t.string :text_nakazy
      t.string :data_nakazy

      t.timestamps
    end
  end
end
