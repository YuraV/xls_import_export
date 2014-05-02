class ExclusionStudentIpo < ActiveRecord::Base
  attr_accessible :initials, :nakaz_rektora, :student_ipo_id
  belongs_to :student_ipo
end
