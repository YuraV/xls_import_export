class Student < ActiveRecord::Base
  attr_accessible :initials, :department, :faculty_name, :appointment
end
