class UploaderService
  class << self

    def upload_file(file)
      # students = []
      people = []
      rektor = []
      education = []
      faculty = []
      spreadsheet = open_with_ro(file)
      header ||= spreadsheet.row(1)
      (2..spreadsheet.last_row).each do |i|
        row = Hash[[header,spreadsheet.row(i)].transpose]
        row.values.collect {|value| value.strip! if value.respond_to? :strip!}
        row.delete_if {|key, value| key.blank?}
        # students << Student.new(row.slice(*Student.accessible_attributes))
        people << Person.new(row.slice(*Person.accessible_attributes))
        rektor << RectorAppointment.new(row.slice(*RectorAppointment.accessible_attributes))
        education << FormOfEducation.new(row.slice(*FormOfEducation.accessible_attributes))
        faculty << Faculty.new(row.slice(*Faculty.accessible_attributes))
        #binding.pry
      end
        Person.import people
        RectorAppointment.import rektor
        FormOfEducation.import education
        Faculty.import faculty

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
  end
end
