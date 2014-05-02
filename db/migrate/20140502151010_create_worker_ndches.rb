class CreateWorkerNdches < ActiveRecord::Migration
  def change
    create_table :worker_ndches do |t|
      t.string :initials
      t.integer :person_id
      t.string :position_at_the_time_of_enrolment
      t.string :theme_which_is_included
      t.string :combining
      t.string :salary
      t.string :posadovyj_yklad

      t.timestamps
    end
  end
end
