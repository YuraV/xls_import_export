class Person < ActiveRecord::Base
  attr_accessible :initials, :person_id
  has_one :student
  has_one :aspirant
  has_one :student_ipo
  has_one :worker_ndch
end
