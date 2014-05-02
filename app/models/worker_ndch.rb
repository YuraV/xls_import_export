class WorkerNdch < ActiveRecord::Base
  attr_accessible :combining, :initials, :person_id, :posadovyj_yklad, :position_at_the_time_of_enrolment, :salary, :theme_which_is_included
   belongs_to :person
  has_many :enrolled_worker_ndch
  has_many :exclusion_worker_ndch
  has_many :transfer_to_new_theme_worker_ndch
end
