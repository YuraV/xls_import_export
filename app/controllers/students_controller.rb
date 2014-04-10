class StudentsController < ApplicationController
  def index
    @students = Student.all
    respond_to do |format|
      format.html
      format.csv {send_data @students.to_csv}
      #format.xls
    end
  end

  def import
    if params[:file]
      Student.upload(params[:file])
    else
      false
    end

    redirect_to students_path, notice: 'Students Imported.'
  end

  def find_files
    @files = Dir.glob('public/files/*')
    Student.upload_csv(@files)
    redirect_to root_url, notice: 'Students Imported.'
  end
end
