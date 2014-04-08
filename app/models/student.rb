class Student < ActiveRecord::Base
  require 'spreadsheet'
  attr_accessible :initials, :department, :study_type, :appointment

  class << self
    def upload(file)
      students = []

      #spreadsheet = open_with_ro(file)


    spreadsheet = open_with_ro(file)


      @header ||= spreadsheet.row(1)
      #binding.pry
      (2..spreadsheet.last_row).each do |i|
        #binding.pry
        row = Hash[[@header,spreadsheet.row(i)].transpose]
        binding.pry
        row.delete_if {|key, value| key.blank?}

        end

        students << new(row.slice(*accessible_attributes))
      transaction do
        import students
      end
    end


    def upload_csv(files)
      students = []

      #spreadsheet = open_with_ro(file)

      files.each do |file|
        spreadsheet = open_ro_csv(file)


        @header ||= spreadsheet.row(1)
        #binding.pry
        (2..spreadsheet.last_row).each do |i|

          row = Hash[[@header,spreadsheet.row(i)].transpose]
          #binding.pry
          row.delete('') if row.any? {|key,value| key.empty?}
          students << new(row.slice(*accessible_attributes))

        end
      end
      transaction do
        import students
      end
    end

    def open_with_ro(file)
      #cut = file.original_filename.gsub(/\.[^.]+\z/, '')
      case File.extname(file.original_filename)
        when ".csv" then Roo::Csv.new(file.path)
        when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
        when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
        else raise "Unknown file type: #{file.original_filename}"
      end
    end

    def upload_spt(file)
      spreadsheet = open_with_spt(file)
    end

    def open_ro_csv(file)
      Roo::CSV.new(file)
    end
  end
end
