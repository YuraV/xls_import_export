class GraduatedStudent < ActiveRecord::Base
  attr_accessible :nakaz_rektora, :specialnist, :faculty_name, :initials, :qualification,
                  :search_archive_data, :study_type, :person_id
end
