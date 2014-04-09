class PeopleController < ApplicationController
  def index
    @people = Person.order(:name)
    respond_to do |format|
      format.html
      format.csv {send_data @students.to_csv}
      #format.xls
    end
  end

  def import
    if params[:file]
      Person.upload(params[:file])
    else
      false
    end

    redirect_to people_path, notice: 'Students Imported.'
  end
end
