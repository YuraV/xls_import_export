class Exclusion < ActiveRecord::Base
  attr_accessible :exclusion_date, :exclusion_reason, :faculty_name, :initials, :kyrs, :nakaz_rektora, :study_type, :student_id
  belongs_to :student
end
