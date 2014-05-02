class Person < ActiveRecord::Base
  attr_accessible :initials, :person_id
  has_one :student
  has_one :aspirant
end
