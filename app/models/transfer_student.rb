class TransferStudent < ActiveRecord::Base
  attr_accessible :faculty_name, :initials, :kyrs, :nakaz_rektora, :student_id, :study_type, :transfer_reason
  belongs_to :student
end
