class GraduatesStudent < ActiveRecord::Base
  attr_accessible :faculty_name, :initials, :nakaz_rektora, :qualification, :speciality, :student_id, :study_type
  belongs_to :student
end
