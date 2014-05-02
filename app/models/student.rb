class Student < ActiveRecord::Base
  attr_accessible :initials, :person_id
  belongs_to :person
  has_many :exclusion
  has_many :renovation_student
  has_many :refresh_course
  has_many :transfer_student
  has_many :enrolled_student
  has_many :diploma
  has_many :graduates_student
end
