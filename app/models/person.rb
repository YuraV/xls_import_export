class Person < ActiveRecord::Base
  attr_accessible :initials

  class << self
    def upload(file)
      UploaderService.upload_file(file)
    end
  end
end
