class Student < ActiveRecord::Base

  attr_accessible :initials, :department, :study_type, :appointment

  class << self
    def import(file)

      spreadsheet = open_spreadsheet(file)

      header = spreadsheet.row(1)
      (spreadsheet.first_row..spreadsheet.last_row).each do |i|
        row = Hash[[header,spreadsheet.row(i)].transpose]

        student = new
        binding.pry
        student.attributes = row.slice(*accessible_attributes)
        student.save!
      end
    end

    def open_spreadsheet(file)
      case File.extname(file.original_filename)
        when ".csv" then Roo::Csv.new(file.path, file.original_filename)
        when ".xls" then Roo::Excel.new(file.path)
        when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
        else raise "Unknown file type: #{file.original_filename}"
      end
    end
  end
end
