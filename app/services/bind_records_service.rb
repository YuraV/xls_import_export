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
    # def rake_task_execute
    #   arr = []
    #   records = GraduatedStudent.select("graduated_students.*, students.id as person_id").joins("JOIN students on graduated_students.initials = students.initials")
    #   records.each {|r| arr << JoinTable.new(r.attributes.slice(*JoinTable.accessible_attributes))}
    #   JoinTable.import arr
    # end
    def rake_task_execute
      UploaderService.populate_person

      arr = []
      student = Student.select("people.*, people.id as person_id").joins("JOIN people on students.initials = people.initials")
      student.each {|s| arr << Student.new(s.attributes.slice(*Student.accessible_attributes))}
      Student.delete_all
      Student.import arr

      Exclusion.scoped.each do |e|
        student = Student.where(initials: e.initials).first
        e.student_id = student.id
        e.save!

      end


      RenovationStudent.scoped.each do |t|
        student = Student.where(initials: t.initials).first
        if student == nil
        else
          t.student_id = student.id
          t.save!
        end
      end

      EnrolledStudent.scoped.each do |en|
        student = Student.where(initials: en.initials).first
        if student == nil
        else
          en.student_id = student.id
          en.save!
        end
      end

      TransferStudent.scoped.each do |tr|
        student = Student.where(initials: tr.initials).first
        if student == nil
        else
          tr.student_id = student.id
          tr.save!
        end
      end

      RefreshCourse.scoped.each do |r|
        student = Student.where(initials: r.initials).first
        if student == nil
        else
          r.student_id = student.id
          r.save!
        end
      end

      Diploma.scoped.each do |d|
        student = Student.where(initials: d.initials).first
        if student == nil
        else
          d.student_id = student.id
          d.save!
        end
      end

      GraduatesStudent.scoped.each do |g|
        student = Student.where(initials: g.initials).first
        if student == nil
        else
          g.student_id = student.id
          g.save!
        end
      end



      arr = []
      aspirant = Aspirant.select("people.*, people.id as person_id, faculty_name as faculty_name, with_separation as with_separation, code_and_name_of_the_speciality as code_and_name_of_the_speciality ").joins("JOIN people on aspirants.initials = people.initials")
      aspirant.each {|s| arr << Aspirant.new(s.attributes.slice(*Aspirant.accessible_attributes))}
      Aspirant.delete_all
      Aspirant.import arr

      EnrolledAspirant.scoped.each do |e|
        aspirant = Aspirant.where(initials: e.initials).first
        e.aspirant_id = aspirant.id
        e.save!

      end

      ExclusionAspirant.scoped.each do |e|
        aspirant = Aspirant.where(initials: e.initials).first
        e.aspirant_id = aspirant.id
        e.save!

      end
    end
  end
end


