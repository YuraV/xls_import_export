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

  def person_all
    @people = Person.paginate(:page => params[:page],
                              :per_page => 15)
  end

  def students_table
    @students = Student.paginate(:page => params[:page],
                                 :per_page => 15)
  end

  def exclusion_table
    @people = Exclusion.paginate(:page => params[:page],
                                 :per_page => 15)
  end

  def renovation_student_table
    @people = RenovationStudent.paginate(:page => params[:page],
                                 :per_page => 15)
  end
  def enrolled_student_table
    @people = EnrolledStudent.paginate(:page => params[:page],
                                         :per_page => 15)
  end
  def transfer_student_table
    @people = TransferStudent.paginate(:page => params[:page],
                                         :per_page => 15)
  end

  def diploma_table
    @people = Diploma.paginate(:page => params[:page],
                                       :per_page => 15)
  end

  def graduates_student_table
    @people = GraduatesStudent.paginate(:page => params[:page],
                               :per_page => 15)
  end

  def refresh_course_table
    @people = RefreshCourse.paginate(:page => params[:page],
                                         :per_page => 15)
  end

  def aspirant_table
    @people = Aspirant.paginate(:page => params[:page],
                                     :per_page => 15)
  end

  def enrolled_aspirant_table
    @people = EnrolledAspirant.paginate(:page => params[:page],
                                     :per_page => 15)
  end

  def exclusion_aspirant_table
    @people = ExclusionAspirant.paginate(:page => params[:page],
                                     :per_page => 15)
  end

  def student_ipo_table
    @people = StudentIpo.paginate(:page => params[:page],
                                :per_page => 15)
  end

  def enrolled_student_ipo_table
    @people = EnrolledStudentIpo.paginate(:page => params[:page],
                                        :per_page => 15)
  end

  def exclusion_student_ipo_table
    @people = ExclusionStudentIpo.paginate(:page => params[:page],
                                         :per_page => 15)
  end


  def delete_all
    ModelsService.models_delete_all
    redirect_to root_path, notice: "All Tables Have Been Cleaned"
  end
end
