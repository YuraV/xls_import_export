class JoinTable < ActiveRecord::Base
  attr_accessible :appointment, :initials, :qualification, :person_id

  has_one :graduated_student
  has_one :student
end
