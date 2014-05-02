class EnrolledStudent < ActiveRecord::Base
  attr_accessible :faculty_name, :initials, :nakaz_rektora, :student_id, :study_type
  belongs_to :student
end
