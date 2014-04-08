class StudentsController < ApplicationController
  def index
    @students = Student.order(:initials)
    respond_to do |format|
      format.html
      format.csv {send_data @students.to_csv}
      #format.xls
    end
  end

  def import
    Student.upload(params[:file])
    redirect_to root_url, notice: 'Students Imported.'
  end

  def find_files
    @files = Dir.glob('public/files/*')
    Student.upload_csv(@files)
    redirect_to root_url, notice: 'Students Imported.'
  end
end
