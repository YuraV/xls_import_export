class Aspirant < ActiveRecord::Base
  attr_accessible :code_and_name_of_the_speciality, :faculty_name, :initials, :person_id, :with_separation

  belongs_to :person
end
