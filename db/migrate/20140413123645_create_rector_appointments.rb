class CreateRectorAppointments < ActiveRecord::Migration
  def change
    create_table :rector_appointments do |t|
      t.string :initials
      t.string :nakaz
      t.string :person_id
      t.timestamps
    end
  end
end
