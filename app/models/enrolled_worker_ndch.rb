class EnrolledWorkerNdch < ActiveRecord::Base
  attr_accessible :from_date, :initials, :nakaz_rektora, :position_which_is_included, :till_date, :worker_dch_id
  belongs_to :worker_ndch
end
