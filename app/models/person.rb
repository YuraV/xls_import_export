class Person < ActiveRecord::Base
  attr_accessible :name

  class << self
    def upload(file)
      UploaderService.upload_file(self, file)
    end
  end
end
