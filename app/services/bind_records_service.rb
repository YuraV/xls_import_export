class BindRecordsService
  class << self
    def rake_task_execute
      Student.scoped.each do |s|
        pe = Person.where(name: s.initials).first
        s.person_id = pe.id
        s.save!
      end
    end
  end
end