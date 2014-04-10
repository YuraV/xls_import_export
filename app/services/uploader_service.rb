class UploaderService
  class << self

    def upload_file(klass, file)
      students = []
      spreadsheet = open_with_ro(file)
      header ||= spreadsheet.row(1)
      (2..spreadsheet.last_row).each do |i|
        row = Hash[[header,spreadsheet.row(i)].transpose]
        row.values.collect {|value| value.strip! if value.respond_to? :strip!}
        row.delete_if {|key, value| key.blank?}
        #binding.pry
        students << klass.new(row.slice(*klass.accessible_attributes))
        #binding.pry
      end
      klass.transaction do
        klass.import students
      end
    end

    def open_with_ro(file)

      #cut = file.original_filename.gsub(/\.[^.]+\z/, '')
      case File.extname(base_file_name(file))
        when ".csv" then Roo::Csv.new(file.path)
        when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
        when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
        else raise "Unknown file type: #{file.original_filename}"
      end
    end

    def base_file_name(file)
      name = if file.class == Array
                File.basename(file[0])
             else
                file.original_filename
             end
      name
    end
    def base_file_path

    end
  end
end
