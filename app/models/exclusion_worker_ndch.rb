class ExclusionWorkerNdch < ActiveRecord::Base
  attr_accessible :date, :initials, :nakaz_rektora, :reason, :worker_dch_id
  belongs_to :worker_ndch
end
