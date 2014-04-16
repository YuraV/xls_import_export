class GraduatedStudent < ActiveRecord::Base
  attr_accessible :appointment, :department, :faculty_name, :initials, :qualification, :search_archive_data, :study_type, :person_id
end
