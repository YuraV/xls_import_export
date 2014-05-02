class EnrolledAspirant < ActiveRecord::Base
  attr_accessible :aspirant_id, :date, :initials, :nakaz_rektora
  belongs_to :aspirant
end
