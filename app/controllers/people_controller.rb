class PeopleController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.csv {send_data @students.to_csv}
      #format.xls
    end
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

  def import
    if params[:file]
      UploaderService.upload_file(params[:file])
    else
      @files = Dir.glob('public/excel/person/*')
      Person.upload(@files)
    end

    redirect_to people_path, notice: 'Students Imported.'
  end
end
