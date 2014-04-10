namespace :bind_student_with_person do

  desc "Bind Person To Student"
  # task :bind_student_with_person => :environment do
  #   s = Student.select('students.*, people.id as person_id').joins('JOIN people on students.initials = people.name')
  #   s.each do |a|
  #     a.save
  #   end

  # end

  desc "bind"
  task :bind_student_with_person => :environment do
    Student.scoped.each do |s|
      pe = Person.where(name: s.initials).first
      s.person_id = pe.id
      s.save!
    end
  end
end
