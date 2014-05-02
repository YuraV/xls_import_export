class StudentIpo < ActiveRecord::Base
  attr_accessible :after_diploma_institute, :faculty_name, :initials, :institute_of_qualification_improvment, :person_id, :speciality
  belongs_to :person
end
