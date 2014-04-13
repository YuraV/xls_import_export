class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :initials

      t.timestamps
    end
  end
end
