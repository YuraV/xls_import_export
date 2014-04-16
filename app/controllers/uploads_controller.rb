class UploadsController < ApplicationController

  def index
    respond_to :html
  end

  def import
    if params[:file]
      UploaderService.upload_file(params[:file])
    else
      flash[:notice] = "Please Select Some File"
      # @files = Dir.glob('public/excel/person/*')
      # Person.upload(@files)
    end
    redirect_to people_path, notice: 'Students Imported.'
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

  def delete_all
    Person.delete_all
    Faculty.delete_all
    RectorAppointment.delete_all
    FormOfEducation.delete_all
    Student.delete_all
    redirect_to root_path
  end
end
