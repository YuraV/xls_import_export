class Student < ActiveRecord::Base
  attr_accessible :initials, :department, :faculty_name, :appointment, :person_id
end
