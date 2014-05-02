class RenovationStudent < ActiveRecord::Base
  attr_accessible :date, :faculty_name, :initials, :kyrs, :nakaz_rektora, :renovation_reason, :student_id, :study_type
  belongs_to :student
end
