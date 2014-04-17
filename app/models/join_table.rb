class JoinTable < ActiveRecord::Base
  attr_accessible :appointment, :initials, :qualification, :person_id
end
