class BindRecordsService
  class << self
    # def rake_task_execute
    #   Faculty.scoped.each do |s|
    #     pe = Person.where(initials: s.initials).first
    #     s.person_id = pe.id
    #     s.save!
    #   end
    #   FormOfEducation.scoped.each do |s|
    #     pe = Person.where(initials: s.initials).first
    #     s.person_id = pe.id
    #     s.save!
    #   end
    #   RectorAppointment.scoped.each do |s|
    #     pe = Person.where(initials: s.initials).first
    #     s.person_id = pe.id
    #     s.save!
    #   end
    # end
    def rake_task_execute
      arr = []
      records = GraduatedStudent.select("graduated_students.*, students.id as person_id").joins("JOIN students on graduated_students.initials = students.initials")
      records.each {|r| arr << JoinTable.new(r.attributes.slice(*JoinTable.accessible_attributes))}
      JoinTable.import arr
    end
  end
end