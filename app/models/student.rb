class Student < ActiveRecord::Base
  attr_accessible :initials, :department, :study_type, :appointment, :person_id
  has_one :person

  def self.upload(file)
    UploaderService.upload_file(self, file)
  end


    #def upload_csv(files)
    #  students = []
    #  files.each do |file|
    #    spreadsheet = open_ro_csv(file)
    #    @header ||= spreadsheet.row(1)
    #    (2..spreadsheet.last_row).each do |i|
    #      row = Hash[[@header,spreadsheet.row(i)].transpose]
    #      row.delete_if {|key, value| key.blank?}
    #      students << new(row.slice(*accessible_attributes))
    #    end
    #  end
    #  transaction do
    #    import students
    #  end
    #end


end
