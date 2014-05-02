class RefreshCourse < ActiveRecord::Base
  attr_accessible :faculty_name, :initials, :kyrs, :nakaz_rektora, :refresh_reason, :student_id, :study_type
  belongs_to :student
end
