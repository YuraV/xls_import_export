class PeopleController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.csv {send_data @students.to_csv}
      #format.xls
    end
  end

  def person_all
    @people = Person.all
  end

  def faculty
    @faculty = Faculty.all
  end

  def rector
    @rector = RectorAppointment.all
  end

  def education_form
    @form_of_education = FormOfEducation.all
  end

  def import
    if params[:file]
      Person.upload(params[:file])
    else
      @files = Dir.glob('public/excel/person/*')
      Person.upload(@files)
    end

    redirect_to people_path, notice: 'Students Imported.'
  end
end
