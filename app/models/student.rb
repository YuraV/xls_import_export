class Student < ActiveRecord::Base
  attr_accessible :initials, :department, :study_type, :appointment

    def self.upload(file)
      #students = []
      #spreadsheet = open_with_ro(file)
      #@header ||= spreadsheet.row(1)
      #(2..spreadsheet.last_row).each do |i|
      #  row = Hash[[@header,spreadsheet.row(i)].transpose]
      #  row.delete_if {|key, value| key.blank?}
      #  students << new(row.slice(*accessible_attributes))
      #  end
      #transaction do
      #  import students
      #end
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
    def open_ro_csv(file)
      Roo::CSV.new(file)
    end
end
