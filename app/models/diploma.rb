class Diploma < ActiveRecord::Base
  attr_accessible :date, :end_year, :faculty_name, :initials, :insignia, :protocol_DEK, :qualification, :series_and_number, :speciality, :student_id, :study_type, :year_of_entry
  belongs_to :student
end
