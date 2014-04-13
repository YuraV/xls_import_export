class BindRecordsService
  class << self
    def rake_task_execute
      Faculty.scoped.each do |s|
        pe = Person.where(initials: s.initials).first
        s.person_id = pe.id
        s.save!
      end
      FormOfEducation.scoped.each do |s|
        pe = Person.where(initials: s.initials).first
        s.person_id = pe.id
        s.save!
      end
      RectorAppointment.scoped.each do |s|
        pe = Person.where(initials: s.initials).first
        s.person_id = pe.id
        s.save!
      end
    end
  end
end