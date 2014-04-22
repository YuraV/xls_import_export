class Student < ActiveRecord::Base
  attr_accessible :initials, :faculty, :study_type, :appointment, :person_id
end
