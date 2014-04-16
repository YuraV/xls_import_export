namespace :bind_student_with_person do

  desc "Bind Person To Student"
  # task :bind_student_with_person => :environment do
  #   s = Student.select('students.*, people.id as person_id').joins('JOIN people on students.initials = people.name')
  #   s.each do |a|
  #     a.save
  #   end
  # ss = GraduatedStudent.select("graduated_students.*, students.id as person_id").joins("JOIN students on graduated_students.initials = students.initials")^C

  # end
  # s.each {|s| a << JoinTable.new(s.attributes.slice(*JoinTable.accessible_attributes))}

  desc "bind"
  task :bind_student_with_person => :environment do
    Student.scoped.each do |s|
      pe = Person.where(name: s.initials).first
      s.person_id = pe.id
      s.save!
    end
  end
end
