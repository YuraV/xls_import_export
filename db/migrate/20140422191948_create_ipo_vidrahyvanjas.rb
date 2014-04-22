class CreateIpoVidrahyvanjas < ActiveRecord::Migration
  def change
    create_table :ipo_vidrahyvanjas do |t|
      t.string :initials
      t.string :faculty
      t.string :specialnist
      t.string :study_type
      t.string :after_diploma_institute
      t.string :institude_of_qualification_improvment
      t.string :nakaz_rektora

      t.timestamps
    end
  end
end
