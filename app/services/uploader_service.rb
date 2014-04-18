class UploaderService
  class << self
    def upload_file(params = {})
      klass = params[:klass]
      file = params[:file]
      klass = klass.constantize
      records = []
      spreadsheet = open_with_ro(file)
      (2..spreadsheet.last_row).each do |i|
        binding.pry
        row = Hash[[header(spreadsheet),spreadsheet.row(i)].transpose]
        strip_values(row)
        clean_empty_keys(row)
        records << klass.new(row.slice(*klass.accessible_attributes))
      end
      klass.import records
    end

    def header(spreadsheet)
      header ||= spreadsheet.row(1)
      header
    end

    def strip_values(hash)
      hash.values.collect {|value| value.strip! if value.respond_to? :strip!}
    end

    def clean_empty_keys(hash)
      hash.delete_if {|key,value| key.blank?}
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
