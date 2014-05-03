class BindRecordsService

  EXCLUDED_MODELS = ["Person","Aspirant","StudentIpo", "WorkerNdch", "Student"]
  EXCLUDED_MODELS.freeze
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

      arr = []
      records = []
      ModelsService.get_models.each do |model|
        arr.concat(model.constantize.all.map(&:initials))
      end
      unless arr.blank?
        arr.uniq!
        arr.each {|record| records  << Person.new(initials: record)}
        Person.import records unless records.blank?
      end


      arr = []
      student = Student.select("people.*, people.id as person_id").joins("JOIN people on students.initials = people.initials")
      student.each {|s| arr << Student.new(s.attributes.slice(*Student.accessible_attributes))}
      if arr.blank?
      else
        Student.delete_all
        Student.import arr
      end


      Exclusion.scoped.each do |e|
        student = Student.where(initials: e.initials).first
        if student.blank?
        else
          e.student_id = student.id
          e.save!
        end
      end


      RenovationStudent.scoped.each do |t|
        student = Student.where(initials: t.initials).first
        if student.blank?
        else
          t.student_id = student.id
          t.save!
        end
      end

      EnrolledStudent.scoped.each do |en|
        student = Student.where(initials: en.initials).first
        if student.blank?
        else
          en.student_id = student.id
          en.save!
        end
      end

      TransferStudent.scoped.each do |tr|
        student = Student.where(initials: tr.initials).first
        if student.blank?
        else
          tr.student_id = student.id
          tr.save!
        end
      end

      RefreshCourse.scoped.each do |r|
        student = Student.where(initials: r.initials).first
        if student.blank?
        else
          r.student_id = student.id
          r.save!
        end
      end

      Diploma.scoped.each do |d|
        student = Student.where(initials: d.initials).first
        if student.blank?
        else
          d.student_id = student.id
          d.save!
        end
      end

      GraduatesStudent.scoped.each do |g|
        student = Student.where(initials: g.initials).first
        if student.blank?
        else
          g.student_id = student.id
          g.save!
        end
      end



      arr = []
      aspirant = Aspirant.select("people.*, people.id as person_id, faculty_name as faculty_name, with_separation as with_separation, code_and_name_of_the_speciality as code_and_name_of_the_speciality ").joins("JOIN people on aspirants.initials = people.initials")
      aspirant.each {|s| arr << Aspirant.new(s.attributes.slice(*Aspirant.accessible_attributes))}
      if arr.blank?
      else
        Aspirant.delete_all
        Aspirant.import arr
      end

      EnrolledAspirant.scoped.each do |e|
        aspirant = Aspirant.where(initials: e.initials).first
        if aspirant.blank?
        else
          e.aspirant_id = aspirant.id
          e.save!
        end
      end

      ExclusionAspirant.scoped.each do |e|
        aspirant = Aspirant.where(initials: e.initials).first
        if aspirant.blank?
        else
          e.aspirant_id = aspirant.id
          e.save!
        end
      end




      arr = []
      student_ipo = StudentIpo.select("people.*, people.id as person_id, faculty_name as faculty_name, after_diploma_institute as after_diploma_institute, institute_of_qualification_improvment as institute_of_qualification_improvment, speciality as speciality ").joins("JOIN people on student_ipos.initials = people.initials")
      student_ipo.each {|s| arr << StudentIpo.new(s.attributes.slice(*StudentIpo.accessible_attributes))}
      if arr.blank?
      else
        StudentIpo.delete_all
        StudentIpo.import arr
      end

      EnrolledStudentIpo.scoped.each do |e|
        student_ipo = StudentIpo.where(initials: e.initials).first
        if student_ipo.blank?
        else
          e.student_ipo_id = student_ipo.id
          e.save!
        end
      end

      ExclusionStudentIpo.scoped.each do |e|
        student_ipo = StudentIpo.where(initials: e.initials).first
        if student_ipo.blank?
        else
          e.student_ipo_id = student_ipo.id
          e.save!
        end
      end


      arr = []
      worker_ndch = WorkerNdch.select("people.*, people.id as person_id, position_at_the_time_of_enrolment as position_at_the_time_of_enrolment, theme_which_is_included as theme_which_is_included, combining as combining, salary as salary, posadovyj_yklad as posadovyj_yklad ").joins("JOIN people on worker_ndches.initials = people.initials")
      worker_ndch.each {|s| arr << WorkerNdch.new(s.attributes.slice(*WorkerNdch.accessible_attributes))}
      if arr.blank?
      else
        WorkerNdch.delete_all
        WorkerNdch.import arr
      end

      EnrolledWorkerNdch.scoped.each do |e|
        worker_ndch = WorkerNdch.where(initials: e.initials).first
        if worker_ndch.blank?
        else
          e.worker_dch_id = worker_ndch.id
          e.save!
        end
      end

      ExclusionWorkerNdch.scoped.each do |e|
        worker_ndch = WorkerNdch.where(initials: e.initials).first
        if worker_ndch.blank?
        else
          e.worker_dch_id = worker_ndch.id
          e.save!
        end
      end

      TransferToNewThemeWorkerNdch.scoped.each do |e|
        worker_ndch = WorkerNdch.where(initials: e.initials).first
        if worker_ndch.blank?
        else
          e.worker_dch_id = worker_ndch.id
          e.save!
        end
      end



      ModelsService.get_models.each do |model|
        if EXCLUDED_MODELS.include?(model)
        else
          table_name = model.tableize.to_sym
          remove_columns(table_name)
        end
      end
    end

    def remove_columns(table_name)
      ActiveRecord::Migration.remove_column table_name, :initials
    end
  end
end


