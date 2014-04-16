class UploadsController < ApplicationController

  def index
    @models = [[GraduatedStudent, GraduatedStudent], [Student,Student]]
    respond_to :html
  end

  def import
    if params[:file]
      UploaderService.upload_file(params)
    else
      flash[:notice] = "Please Select Some File"
      # @files = Dir.glob('public/excel/person/*')
      # Person.upload(@files)
    end
    redirect_to root_path, notice: 'Students Imported.'
  end

  def view_tables
    respond_to :html
  end

  def person_all
    @people = Person.paginate(:page => params[:page],
                              :per_page => 15)
  end

  def faculty
    @faculty = Faculty.paginate(:page => params[:page],
                                :per_page => 15)
  end

  def rector
    @rector = RectorAppointment.paginate(:page => params[:page],
                                         :per_page => 15)
  end

  def education_form
    @form_of_education = FormOfEducation.paginate(:page => params[:page],
                                                  :per_page => 15)
  end

  def students_table
    @students = Student.paginate(:page => params[:page],
                                 :per_page => 15)
  end

  def graduated_students_table
    @graduated_students = GraduatedStudent.paginate(:page => params[:page],
                                 :per_page => 15)
  end

  def delete_all
    Person.delete_all
    Faculty.delete_all
    RectorAppointment.delete_all
    FormOfEducation.delete_all
    Student.delete_all
    GraduatedStudent.delete_all
    redirect_to root_path
  end
end
