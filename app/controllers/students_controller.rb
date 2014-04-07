class StudentsController < ApplicationController
  def index
    @students = Student.order(:initials)
    respond_to do |format|
      format.html
      format.csv {send_data @students.to_csv}
      format.xls
    end
  end

  def import
    Student.import(params[:file])
    redirect_to root_url, notice: 'Students Imported.'
  end
end
