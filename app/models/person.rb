class Person < ActiveRecord::Base
  attr_accessible :initials, :person_id
  has_one :student
end
