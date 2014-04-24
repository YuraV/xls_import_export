class CreateFormOfEducations < ActiveRecord::Migration
  def change
    create_table :form_of_educations do |t|
      t.string :initials
      t.string :study_type
      t.string :person_id

      t.timestamps
    end
  end
end
