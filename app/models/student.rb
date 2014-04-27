class Student < ActiveRecord::Base
  attr_accessible :initials, :person_id
  belongs_to :person
  has_one :exclusion
end
