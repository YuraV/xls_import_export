class UploadsController < ApplicationController

  def index
    @models = ModelsService.prepare_models_for_select
    respond_to :html
  end

  def import
    if params[:file]
      UploaderService.upload_file(params)
      redirect_to root_path, notice: 'Students Imported.'
    else
      redirect_to uploads_path, alert: "Please Select Some File"
    end
  end

  def view_tables
    respond_to :html
  end

  def students_table
    @students = Student.paginate(:page => params[:page],
                                 :per_page => 15)
  end

  def graduated_students_table
    @graduated_students = GraduatedStudent.paginate(:page => params[:page],
                                 :per_page => 15)
  end

  def join_table
    @join_table = JoinTable.paginate(:page => params[:page],
                                     :per_page => 15)
  end

  def delete_all
    ModelsService.models_delete_all
    redirect_to root_path, notice: "All Tables Have Been Cleaned"
  end

  def create_model
    UploaderService.create_table_method
  end

end
